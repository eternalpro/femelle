package io.github.eternalpro.controller.admin;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import io.github.eternalpro.constant.SystemCST;
import io.github.eternalpro.core.FlashMessageUtils;
import io.github.eternalpro.model.*;
import io.github.eternalpro.model.System;

/**
 * Created by fangshuai on 2015-04-13-0013.
 */
@ControllerBind(controllerKey = "/admin/mail", viewPath = "admin/mail")
public class AdminMailController extends Controller{

    @ActionKey("/admin/mail")
    public void index(){
        System mailHost = System.dao.findByKey(SystemCST.MAIL_HOST);
        System mailAddress = System.dao.findByKey(SystemCST.MAIL_ADDRESS);
        System mailUsername = System.dao.findByKey(SystemCST.MAIL_USERNAME);
        System mailPassword = System.dao.findByKey(SystemCST.MAIL_PASSWORD);

        setAttr("mailHost", mailHost);
        setAttr("mailAddress", mailAddress);
        setAttr("mailUsername", mailUsername);
        setAttr("mailPassword", mailPassword);
    }

    public void save() {
        String mailHost = getPara("mailHost");
        String mailAddress = getPara("mailAddress");
        String mailUsername = getPara("mailUsername");
        String mailPassword = getPara("mailPassword");

        System.dao.saveValue(SystemCST.MAIL_HOST, mailHost);
        System.dao.saveValue(SystemCST.MAIL_ADDRESS, mailAddress);
        System.dao.saveValue(SystemCST.MAIL_USERNAME, mailUsername);
        System.dao.saveValue(SystemCST.MAIL_PASSWORD, mailPassword);

        FlashMessageUtils.setSuccessMessage(this, "保存成功！");
        redirect("/admin/mail");

    }
}
