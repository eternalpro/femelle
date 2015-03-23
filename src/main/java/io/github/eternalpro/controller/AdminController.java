package io.github.eternalpro.controller;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import io.github.eternalpro.constant.Module;
import io.github.eternalpro.core.FlashMessageUtils;
import io.github.eternalpro.model.SiteInfo;
import io.github.eternalpro.service.SiteInfoService;

/**
 * Created by fangshuai on 2015-03-20-0020.
 */
@ControllerBind(controllerKey = "/admin", viewPath = "admin")
public class AdminController extends Controller{

    /**
     * 跳转后台
     */
    @ActionKey("/admin")
    public void index(){
        SiteInfo modulenewsInfo = SiteInfo.findByModule(Module.MODULE_NEWS);
        SiteInfo moduleaboutInfo = SiteInfo.findByModule(Module.MODULE_ABOUT);
        SiteInfo brandInfo = SiteInfo.findByModule(Module.MODULE_BRAND);

        setAttr("modulenewsInfo", modulenewsInfo);
        setAttr("moduleaboutInfo", moduleaboutInfo);
        setAttr("brandInfo", brandInfo);
        setAttr("success", getAttr("success"));
    }

    /**
     * 登录
     */
    public void login(){

    }

    /**
     * 登出
     */
    public void logout(){

    }


}
