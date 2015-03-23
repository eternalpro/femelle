package io.github.eternalpro.core;

import com.jfinal.aop.Interceptor;
import com.jfinal.core.ActionInvocation;
import org.apache.log4j.Logger;

import javax.servlet.http.HttpSession;

/**
 * flash 消息提示拦截器
 * Created by gefangshuai on 2015-03-22-0022.
 */
public class FlashMessageInterceptor implements Interceptor {
    private static Logger logger = Logger.getLogger(FlashMessageInterceptor.class);
    @Override
    public void intercept(ActionInvocation ai) {
        HttpSession session = ai.getController().getSession();
        String flash_success_message = (String) session.getAttribute(FlashMessage.FLASH_SUCCESS);
        String flash_warnging_message = (String) session.getAttribute(FlashMessage.FLASH_WARNING);
        String flash_info_message = (String) session.getAttribute(FlashMessage.FLASH_INFO);
        String flash_error_message = (String) session.getAttribute(FlashMessage.FLASH_ERROR);

        ai.getController().setAttr(FlashMessage.FLASH_SUCCESS, flash_success_message);
        ai.getController().setAttr(FlashMessage.FLASH_WARNING, flash_warnging_message);
        ai.getController().setAttr(FlashMessage.FLASH_INFO, flash_info_message);
        ai.getController().setAttr(FlashMessage.FLASH_ERROR, flash_error_message);

//        logger.debug(flash_success_message);
//        logger.debug(flash_warnging_message);
//        logger.debug(flash_info_message);
//        logger.debug(flash_error_message);

        session.removeAttribute(FlashMessage.FLASH_SUCCESS);
        session.removeAttribute(FlashMessage.FLASH_WARNING);
        session.removeAttribute(FlashMessage.FLASH_INFO);
        session.removeAttribute(FlashMessage.FLASH_ERROR);
        ai.invoke();
    }
}
