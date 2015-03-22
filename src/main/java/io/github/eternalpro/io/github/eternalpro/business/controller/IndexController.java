package io.github.eternalpro.io.github.eternalpro.business.controller;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;

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
    public void brand(){

    }

    public void demo(){

    }
}
