package cn.xhu.softwareengineering.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class RquestInterceptor extends HandlerInterceptorAdapter {

	/**
     * 预处理回调方法，实现处理器的预处理（如检查登陆），第三个参数为响应的处理器，自定义Controller
     * 返回值：true表示继续流程（如调用下一个拦截器或处理器）；false表示流程中断（如登录检查失败），
     * 不会继续调用其他的拦截器或处理器，此时我们需要通过response来产生响应；
     */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// 允许客户端携带跨域cookie
		// 当Access-Control-Allow-Credentials设为true的时候，Access-Control-Allow-Origin不能设为星号
		response.setHeader("Access-Control-Allow-Credentials", "true");
		// 允许指定域访问跨域资源
		//response.setHeader("Access-Control-Allow-Origin", "http://127.0.0.1:9006, http://127.0.0.1:8080");
		response.setHeader("Access-Control-Allow-Origin", request.getHeader("Origin"));// *
		// 允许浏览器发送的请求消息头
		response.setHeader("Access-Control-Allow-Headers", request.getHeader("Access-Control-Request-Headers"));// *
		// 允许浏览器在预检请求成功之后发送的实际请求方法名
		response.setHeader("Access-Control-Allow-Methods", request.getHeader("Access-Control-Request-Method"));
		// 设置响应数据格式
		response.setHeader("Content-Type", "application/json");
		// 查看请求方法
		String method= request.getMethod();
		System.out.println(method);
		return true;

	}
	/*下面的方法可以不重写*/
	/**
     * 后处理回调方法，实现处理器的后处理（但在渲染视图之前），此时我们可以通过modelAndView（模型和视图对象）
     * 对模型数据进行处理或对视图进行处理，modelAndView也可能为null。
     */
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		super.postHandle(request, response, handler, modelAndView);
	}
	
	/**
     * 整个请求处理完毕回调方法，即在视图渲染完毕时回调，如性能监控中我们可以在此记录结束时间并输出消耗时间，
     * 还可以进行一些资源清理，类似于try-catch-finally中的finally，但仅调用处理器执行链中
     */
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		super.afterCompletion(request, response, handler, ex);
	}
	
	/**
	 * 处理异步请求
     * 不是HandlerInterceptor的接口实现，是AsyncHandlerInterceptor的
     * AsyncHandlerInterceptor实现了HandlerInterceptor
     */
	public void afterConcurrentHandlingStarted(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		super.afterConcurrentHandlingStarted(request, response, handler);
	}

}
