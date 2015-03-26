package io.github.eternalpro.controller.admin;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;

/**
 *
 * Created by gefangshuai on 2015/3/26.
 */
@ControllerBind(controllerKey = "/admin/support", viewPath = "admin")
public class AdminSupportController extends Controller{

    @ActionKey("/admin/support")
    public void index(){

    }
}
