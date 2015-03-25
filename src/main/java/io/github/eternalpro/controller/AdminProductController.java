package io.github.eternalpro.controller;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;

/**
 * Created by gefangshuai on 2015-03-22-0022.
 */
@ControllerBind(controllerKey = "/admin/products", viewPath = "admin/product")
public class AdminProductController extends Controller{

    @ActionKey("/admin/products")
    public void index(){

    }
}