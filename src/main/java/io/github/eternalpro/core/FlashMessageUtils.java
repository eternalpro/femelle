package io.github.eternalpro.core;

import com.jfinal.core.Controller;

/**
 * flash 消息设置工具类
 * Created by gefangshuai on 2015-03-22-0022.
 */
public class FlashMessageUtils {

    public static void setSuccessMessage(Controller controller, String message){
        controller.getSession().setAttribute(FlashMessage.FLASH_SUCCESS, message);
    }

    public static void setInfoMessage(Controller controller, String message){
        controller.getSession().setAttribute(FlashMessage.FLASH_INFO, message);
    }

    public static void setErrorMessage(Controller controller, String message){
        controller.getSession().setAttribute(FlashMessage.FLASH_ERROR, message);
    }

    public static void setWarningMessage(Controller controller, String message){
        controller.getSession().setAttribute(FlashMessage.FLASH_WARNING, message);
    }
}
