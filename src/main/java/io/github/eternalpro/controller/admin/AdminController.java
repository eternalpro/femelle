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

        setAttr("modulenewsInfo", modulenewsInfo);
        setAttr("moduleaboutInfo", moduleaboutInfo);
        setAttr("brandInfo", brandInfo);
        setAttr("joinusInfo", joinusInfo);
        setAttr("affiliateInfo", affiliateInfo);
        setAttr("shopInfo", shopInfo);
        setAttr("videoInfo", videoInfo);
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


}
