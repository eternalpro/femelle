package io.github.eternalpro.controller;

import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import io.github.eternalpro.constant.Module;
import io.github.eternalpro.model.SiteInfo;

/**
 * Created by fangshuai on 2015-03-29-0029.
 */
@ControllerBind(controllerKey = "/member", viewPath = "member")
public class MemberController extends Controller {

    public void callus() {
        SiteInfo callusInfo = SiteInfo.findByModule(Module.MODULE_CALLUS);

        setAttr("callusInfo", callusInfo);
    }

    public void faq() {
        SiteInfo faqInfo = SiteInfo.findByModule(Module.MODULE_FAQ);

        setAttr("faqInfo", faqInfo);
    }
}
