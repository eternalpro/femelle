package io.github.eternalpro.controller.admin;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;

/**
 * 当季推荐
 * Created by gefangshuai on 2015/3/28.
 */
@ControllerBind(controllerKey = "/admin/season", viewPath = "admin/season")
public class AdminSeasonController extends Controller{

    @ActionKey("/admin/season")
    public void index(){

    }
}
