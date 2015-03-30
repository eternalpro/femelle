package io.github.eternalpro.controller.admin;

import com.jfinal.aop.ClearInterceptor;
import com.jfinal.aop.ClearLayer;
import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import com.jfinal.kit.EncryptionKit;
import com.jfinal.plugin.auth.SessionKit;
import io.github.eternalpro.constant.Module;
import io.github.eternalpro.constant.SiteCST;
import io.github.eternalpro.core.FlashMessageUtils;
import io.github.eternalpro.model.*;
import io.github.eternalpro.model.System;
import io.github.eternalpro.service.SiteInfoService;
import org.apache.commons.lang3.StringUtils;

/**
 * Created by fangshuai on 2015-03-20-0020.
 */
@ControllerBind(controllerKey = "/admin", viewPath = "admin")
public class AdminController extends Controller {

    /**
     * 跳转后台
     */
    @ActionKey("/admin")
    public void index() {
        SiteInfo modulenewsInfo = SiteInfo.findByModule(Module.MODULE_NEWS);
        SiteInfo moduleaboutInfo = SiteInfo.findByModule(Module.MODULE_ABOUT);
        SiteInfo brandInfo = SiteInfo.findByModule(Module.MODULE_BRAND);
        SiteInfo joinusInfo = SiteInfo.findByModule(Module.MODULE_JOINUS);
        SiteInfo affiliateInfo = SiteInfo.findByModule(Module.MODULE_AFFILIATE);
        SiteInfo shopInfo = SiteInfo.findByModule(Module.MODULE_SHOP);
        SiteInfo videoInfo = SiteInfo.findByModule(Module.MODULE_HOME_VIDEO);
        SiteInfo vipInfo = SiteInfo.findByModule(Module.MODULE_VIP);
        SiteInfo tmallInfo = SiteInfo.findByModule(Module.MODULE_TMALL);
        SiteInfo callusInfo = SiteInfo.findByModule(Module.MODULE_CALLUS);
        SiteInfo faqInfo = SiteInfo.findByModule(Module.MODULE_FAQ);

        setAttr("modulenewsInfo", modulenewsInfo);
        setAttr("moduleaboutInfo", moduleaboutInfo);
        setAttr("brandInfo", brandInfo);
        setAttr("joinusInfo", joinusInfo);
        setAttr("affiliateInfo", affiliateInfo);
        setAttr("shopInfo", shopInfo);
        setAttr("videoInfo", videoInfo);
        setAttr("vipInfo", vipInfo);
        setAttr("tmallInfo", tmallInfo);
        setAttr("callusInfo", callusInfo);
        setAttr("faqInfo", faqInfo);

        setAttr("success", getAttr("success"));
    }

    /**
     * 登录
     */
    @ClearInterceptor(ClearLayer.ALL)
    public void login() {
        FlashMessageUtils.createFlash(this);
    }

    /**
     * 登录校验
     */
    @ClearInterceptor(ClearLayer.ALL)
    public void adminlogin() {
        FlashMessageUtils.createFlash(this);
        String password = getPara("password");
        if (StringUtils.isNotBlank(password)) {
            if (System.dao.findByKey("password").getStr("value").equals(EncryptionKit.md5Encrypt(password))) {
                getSession().setAttribute(SiteCST.SESSION_LOGIN, true);
                FlashMessageUtils.setSuccessMessage(this, "管理员，欢迎回来！");
                redirect("/admin");
            } else {
                FlashMessageUtils.setErrorMessage(this, "登录失败，请检查密码是否正确！");
                redirect("/admin/login");
            }
        } else {
            FlashMessageUtils.setErrorMessage(this, "登录失败，请检查密码是否正确！");
            redirect("/admin/login");
        }

    }


    /**
     * 登出
     */
    public void logout() {
        getSession().removeAttribute(SiteCST.SESSION_LOGIN);
        FlashMessageUtils.setInfoMessage(this, "退出成功！");
        redirect("/admin/login");
    }

    public void password(){

    }

    public void savePassword(){
        String oldPassword = getPara("old_password");
        String password = getPara("password");
        String confirm_password = getPara("confirm_password");

        System dbPassword = System.dao.findByKey("password");
        if(!dbPassword.getStr("value").equals(EncryptionKit.md5Encrypt(oldPassword))) {
            renderText("原密码错误！");
        }else if(!password.equals(confirm_password)) {
            renderText("两次密码不一致！");
        }else if(StringUtils.isBlank(password)){
            renderText("密码不能为空！");
        }else {
            dbPassword.set("value", EncryptionKit.md5Encrypt(password)).update();
            renderText("修改成功！");
        }
    }
}
