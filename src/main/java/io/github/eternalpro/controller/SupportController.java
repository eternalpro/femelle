package io.github.eternalpro.controller;

import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import io.github.eternalpro.constant.Module;
import io.github.eternalpro.model.SiteInfo;

/**
 * Created by gefangshuai on 2015/3/27.
 */
@ControllerBind(controllerKey = "/support", viewPath = "support")
public class SupportController extends Controller {

    public void vip() {
        SiteInfo vipInfo = SiteInfo.findByModule(Module.MODULE_VIP);

        setAttr("vipInfo", vipInfo);
    }

    public void tmall() {
        SiteInfo tmallInfo = SiteInfo.findByModule(Module.MODULE_TMALL);

        setAttr("tmallInfo", tmallInfo);
    }
}
