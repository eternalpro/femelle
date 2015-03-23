package io.github.eternalpro.controller;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import io.github.eternalpro.constant.Module;
import io.github.eternalpro.model.SiteInfo;
import io.github.eternalpro.service.SiteInfoService;

/**
 * Created by fangshuai on 2015-03-17-0017.
 */
@ControllerBind(controllerKey = "/", viewPath = "")
public class IndexController extends Controller{
    /**
     * 首页
     */
    @ActionKey("/")
    public void index(){

    }

    /**
     * 品牌介绍
     */
    @ActionKey("/brand")
    public void brand() {
        SiteInfo brandInfo = SiteInfo.findByModule(Module.MODULE_BRAND);
        setAttr("brandInfo", brandInfo);
    }

    public void demo(){

    }
}
