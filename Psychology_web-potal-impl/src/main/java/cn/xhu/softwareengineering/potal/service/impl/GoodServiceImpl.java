package cn.xhu.softwareengineering.potal.service.impl;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradeQueryRequest;
import com.alipay.api.response.AlipayTradeQueryResponse;

import cn.xhu.softwareengineering.bean.CartGood;
import cn.xhu.softwareengineering.bean.CustomerAddr;
import cn.xhu.softwareengineering.bean.GoodType;
import cn.xhu.softwareengineering.bean.Order;
import cn.xhu.softwareengineering.bean.PsychoGood;
import cn.xhu.softwareengineering.bean.SaleComment;
import cn.xhu.softwareengineering.bean.SaleTheme;
import cn.xhu.softwareengineering.potal.dao.GoodMapper;
import cn.xhu.softwareengineering.potal.service.GoodService;
import cn.xhu.softwareengineering.util.Page;
import cn.xhu.softwareengineering.util.PropertiesConfig;
import lombok.extern.log4j.Log4j;

@Service
public class GoodServiceImpl implements GoodService {
	
	@Autowired
	GoodMapper goodMapper;
	
	Logger logger = Logger.getLogger(Log4j.class);

	@Override
	public List<GoodType> queryTypeList(Map<String, Object> paramMap){
		return goodMapper.queryTypeList(paramMap);
	}

	@Override
	public List<SaleTheme> querySlideList() {
		return goodMapper.querySlideList();
	}

	@Override
	public Page<PsychoGood> queryGoodList(Map<String, Object> paramMap) {
		Page<PsychoGood> page = new Page<PsychoGood>((Integer)paramMap.get("pageno"), (Integer)paramMap.get("pagesize"));
		paramMap.put("startIndex",page.getStartIndex());
		page.setData(goodMapper.queryGoodList(paramMap));
		Integer totalsize = goodMapper.queryGoodListCount(paramMap);
		page.setTotalsize(totalsize);
		return page;
	}

	@Override
	public PsychoGood queryGoodById(Integer goodid) {
		PsychoGood good = goodMapper.queryGoodById(goodid);
		return good;
	}

	@Override
	public GoodType queryParentType(Map<String, Object> paramMap) {
		return goodMapper.queryParentType(paramMap);
	}

	@Override
	public List<Integer> querySaleOutfeaList(Map<String, Object> paramMap) {
		return goodMapper.querySaleOutfeaList(paramMap);
	}

	@Override
	public Integer querySku(Map<String, Object> paramMap) {
		return goodMapper.querySku(paramMap);
	}

	@Override
	public int addCart(Map<String, Object> paramMap) {
		return goodMapper.addCart(paramMap);
	}

	@Override
	public List<CartGood> queryCartList(Map<String, Object> paramMap) {
		return goodMapper.queryCartList(paramMap);
	}

	@Override
	public int UpdateCartNum(Map<String, Object> paramMap) {
		return goodMapper.UpdateCartNum(paramMap);
	}

	@Override
	public int delCartList(Map<String, Object> paramMap) {
		return goodMapper.delCartList(paramMap);
	}

	@Override
	public List<Integer> queryColGoodList(Map<String, Object> paramMap) {
		return goodMapper.queryColGoodList(paramMap);
	}

	@Override
	public List<CustomerAddr> queryAddrList(Map<String, Object> parammap) {
		return goodMapper.queryAddrList(parammap);
	}

	@Override
	public int AddCustomerAddr(CustomerAddr addr) {
		if(goodMapper.AddCustomerAddr(addr)>0) {
			if(addr.getIs_default()==1) {
				if(goodMapper.upDateAddrDefault(addr.getCustomer_user_id(),addr.getCustomer_addr_id())>0) {
					return addr.getCustomer_addr_id();
				}
			}
			return addr.getCustomer_addr_id();
		}
		return 0;
	}

	@Override
	public int updateCustomerAddr(CustomerAddr addr) {
		if(goodMapper.updateCustomerAddr(addr)>0) {
			if(addr.getIs_default()==1) {
				if(goodMapper.upDateAddrDefault(addr.getCustomer_user_id(),addr.getCustomer_addr_id())>0) {
					return addr.getCustomer_addr_id();
				}
			}
			return addr.getCustomer_addr_id();
		}
		return 0;
	}

	@Override
	public Order addOrder(Order order) {
		if(goodMapper.addOrder(order)>0) {
			System.out.println(order.getOrder_id());
			if(goodMapper.addOrder_sku(order.getOrder_id(),order.getObjList())>0) {
				return order;
			}
		}
		return null;
	}

	 /**
		 * 支付宝异步请求逻辑处理
		 * @param request
		 * @return
		 * @throws IOException
		 */ 
		public String notify(Map<String, String> conversionParams){
			
			logger.info("==================支付宝异步请求逻辑处理");
				
			 //签名验证(对支付宝返回的数据验证，确定是支付宝返回的)
		    boolean signVerified = false;  	 
		    
		    try {  
		        //调用SDK验证签名
		        signVerified = AlipaySignature.rsaCheckV1(conversionParams, PropertiesConfig.getKey("alipay_public_key"), PropertiesConfig.getKey("charset"), PropertiesConfig.getKey("sign_type")); 
		        
		    } catch (AlipayApiException e) {  
		    	logger.info("==================验签失败 ！");	
		        e.printStackTrace();         
		    }  	 
		    
		    //对验签进行处理
		    if (signVerified) {
		    	//验签通过  	    	
		    	//获取需要保存的数据
		    	    String appId=conversionParams.get("app_id");//支付宝分配给开发者的应用Id
			    String notifyTime=conversionParams.get("notify_time");//通知时间:yyyy-MM-dd HH:mm:ss
			    String gmtCreate=conversionParams.get("gmt_create");//交易创建时间:yyyy-MM-dd HH:mm:ss
			    String gmtPayment=conversionParams.get("gmt_payment");//交易付款时间
			    String gmtRefund=conversionParams.get("gmt_refund");//交易退款时间
			    String gmtClose=conversionParams.get("gmt_close");//交易结束时间
			    String tradeNo=conversionParams.get("trade_no");//支付宝的交易号
			    String outTradeNo = conversionParams.get("out_trade_no");//获取商户之前传给支付宝的订单号（商户系统的唯一订单号）
			    String outBizNo=conversionParams.get("out_biz_no");//商户业务号(商户业务ID，主要是退款通知中返回退款申请的流水号)
			    String buyerLogonId=conversionParams.get("buyer_logon_id");//买家支付宝账号
			    String sellerId=conversionParams.get("seller_id");//卖家支付宝用户号
			    String sellerEmail=conversionParams.get("seller_email");//卖家支付宝账号
			    String totalAmount=conversionParams.get("total_amount");//订单金额:本次交易支付的订单金额，单位为人民币（元）
			    String receiptAmount=conversionParams.get("receipt_amount");//实收金额:商家在交易中实际收到的款项，单位为元
			    String invoiceAmount=conversionParams.get("invoice_amount");//开票金额:用户在交易中支付的可开发票的金额
			    String buyerPayAmount=conversionParams.get("buyer_pay_amount");//付款金额:用户在交易中支付的金额		  
			    String tradeStatus = conversionParams.get("trade_status");// 获取交易状态 
			    
			    //支付宝官方建议校验的值（out_trade_no、total_amount、sellerId、app_id）
			    Order alipaymentOrder=this.selectByOutTradeNo(outTradeNo); 	
			  
			    if(alipaymentOrder!=null&&totalAmount.equals(String.valueOf(alipaymentOrder.getOrder_total_amount()))&&PropertiesConfig.getKey("app_id").equals(appId)){
				    //修改数据库支付宝订单表(因为要保存每次支付宝返回的信息到数据库里，以便以后查证)
//				    alipaymentOrder.setNotifyTime(dateFormat(notifyTime));
//				    alipaymentOrder.setGmtCreate(dateFormat(gmtCreate));
//				    alipaymentOrder.setGmtPayment(dateFormat(gmtPayment));
//				    alipaymentOrder.setGmtRefund(dateFormat(gmtRefund));
//				    alipaymentOrder.setGmtClose(dateFormat(gmtClose));
//				    alipaymentOrder.setTradeNo(tradeNo);
//				    alipaymentOrder.setOutBizNo(outBizNo);
//				    alipaymentOrder.setBuyerLogonId(buyerLogonId);
//				    alipaymentOrder.setSellerId(sellerId);
//				    alipaymentOrder.setSellerEmail(sellerEmail);
//				    alipaymentOrder.setTotalAmount(Double.parseDouble(totalAmount));
//				    alipaymentOrder.setReceiptAmount(Double.parseDouble(receiptAmount));
//				    alipaymentOrder.setInvoiceAmount(Double.parseDouble(invoiceAmount));
//				    alipaymentOrder.setBuyerPayAmount(Double.parseDouble(buyerPayAmount));
				    switch (tradeStatus) // 判断交易结果
		                    {
		                    case "TRADE_FINISHED": // 交易结束并不可退款
		            	        alipaymentOrder.setOrder_level((byte) 3);
		                        break;
		                    case "TRADE_SUCCESS": // 交易支付成功
		            	        alipaymentOrder.setOrder_level((byte) 2);	            	  
		                        break;
		                    case "TRADE_CLOSED": // 未付款交易超时关闭或支付完成后全额退款
		            	        alipaymentOrder.setOrder_level((byte) 1);
		                        break;
		                    case "WAIT_BUYER_PAY": // 交易创建并等待买家付款
		            	        alipaymentOrder.setOrder_level((byte) 0);
		                        break;
		                    default:
		                        break;
		                    }
				    int returnResult=this.updateByPrimaryKey(alipaymentOrder);    //更新交易表中状态
				    		    			    
			        if(tradeStatus.equals("TRADE_SUCCESS")) {    //只处理支付成功的订单: 修改交易表状态,支付成功
			          
			            if(returnResult>0){
			                 return "success";
			            }else{
			                 return "fail";
			            }
			        }else{
			            return "fail";
			        }
			    	
			    }else{
			    	logger.info("==================支付宝官方建议校验的值（out_trade_no、total_amount、sellerId、app_id）,不一致！返回fail");
			    	return"fail";
			    }
	 
		    } else {  //验签不通过   
		    	logger.info("==================验签不通过 ！");
		        return "fail";
		    }
			
		}

	private int updateByPrimaryKey(Order alipaymentOrder) {
		return goodMapper.updateByPrimaryKey(alipaymentOrder);
	}

	private Order selectByOutTradeNo(String outTradeNo) {
		return goodMapper.selectByOutTradeNo(outTradeNo);
	}

	/**
	 * 向支付宝发起订单查询请求
	 * @param request
	 * @return
	 * @throws IOException
	 */ 
	@Override
	public int checkAlipay(String outTradeNo) {
		logger.info("==================向支付宝发起查询，查询商户订单号为："+outTradeNo);
		
		try {
		//实例化客户端（参数：网关地址、商户appid、商户私钥、格式、编码、支付宝公钥、加密类型）
                AlipayClient alipayClient = new DefaultAlipayClient(PropertiesConfig.getKey("gatewayUrl"), PropertiesConfig.getKey("app_id"), 
                PropertiesConfig.getKey("merchant_private_key"), PropertiesConfig.getKey("format"), PropertiesConfig.getKey("charset"), 
                PropertiesConfig.getKey("alipay_public_key"),PropertiesConfig.getKey("sign_type"));
		AlipayTradeQueryRequest alipayTradeQueryRequest = new AlipayTradeQueryRequest();
		alipayTradeQueryRequest.setBizContent("{" +
		"\"out_trade_no\":\""+outTradeNo+"\"" +
		"}");
		AlipayTradeQueryResponse alipayTradeQueryResponse = alipayClient.execute(alipayTradeQueryRequest);	
		if(alipayTradeQueryResponse.isSuccess()){
				
		    Order alipaymentOrder=this.selectByOutTradeNo(outTradeNo);
		    //修改数据库支付宝订单表
		    alipaymentOrder.setOut_trade_no(alipayTradeQueryResponse.getTradeNo());
		    alipaymentOrder.setOrder_total_amount(Float.parseFloat(alipayTradeQueryResponse.getTotalAmount()));
		    switch (alipayTradeQueryResponse.getTradeStatus()) // 判断交易结果
                    {
                    case "TRADE_FINISHED": // 交易结束并不可退款
            	        alipaymentOrder.setOrder_level(3);
                        break;
                    case "TRADE_SUCCESS": // 交易支付成功
            	        alipaymentOrder.setOrder_level(2);          	
                        break;
                    case "TRADE_CLOSED": // 未付款交易超时关闭或支付完成后全额退款
            	        alipaymentOrder.setOrder_level(1);          	
                        break;
                    case "WAIT_BUYER_PAY": // 交易创建并等待买家付款
            	        alipaymentOrder.setOrder_level(0);
                        break;
                    default:
                        break;
                    }
		    this.updateByPrimaryKey(alipaymentOrder); //更新表记录
		    return alipaymentOrder.getOrder_level();
		} else {
			logger.info("==================调用支付宝查询接口失败！");
		}
		} catch (AlipayApiException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int addGoodComment(Map<String, Object> paramMap) {
		SaleComment comment = (SaleComment)paramMap.get("comment");
		goodMapper.addGoodComment(comment);
		int commentid = comment.getComment_id();
		if(commentid>0) {
			if(goodMapper.addCommentImg(commentid, paramMap.get("imgList"))>0) {
				return commentid;
			}
			return 0;
		}
		return 0;
	}

	@Override
	public List<SaleComment> queryCommentList(Integer id) {
		return goodMapper.queryCommentList(id);
	}
	
}
