package cn.xhu.softwareengineering.potal.service.impl;

import org.springframework.stereotype.Service;

import com.alipay.api.AlipayApiException;

import cn.xhu.softwareengineering.bean.AlipayBean;
import cn.xhu.softwareengineering.potal.service.PayService;
import cn.xhu.softwareengineering.util.AlipayUtil;

@Service
public class PayServiceImpl implements PayService{
	 @Override
	    public String aliPay(AlipayBean alipayBean) throws AlipayApiException {
	        return AlipayUtil.connect(alipayBean);
	    }
}
