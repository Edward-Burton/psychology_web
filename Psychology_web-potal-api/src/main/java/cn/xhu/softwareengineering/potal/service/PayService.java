package cn.xhu.softwareengineering.potal.service;

import com.alipay.api.AlipayApiException;

import cn.xhu.softwareengineering.bean.AlipayBean;

public interface PayService {
	/*支付宝*/
    String aliPay(AlipayBean alipayBean) throws AlipayApiException;
}
