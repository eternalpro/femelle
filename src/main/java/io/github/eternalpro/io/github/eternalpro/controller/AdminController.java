package io.github.eternalpro.io.github.eternalpro.controller;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;

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

    }

    /**
     * 登录
     */
    public void login(){

    }

    public void logout(){

    }
}
