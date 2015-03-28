package io.github.eternalpro.controller;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import io.github.eternalpro.model.Product;
import io.github.eternalpro.model.Tuijian;

import java.util.List;

/**
 * Created by gefangshuai on 2015/3/28.
 */
@ControllerBind(controllerKey = "/season", viewPath = "season")
public class SeasonController extends Controller {

    @ActionKey("/season")
    public void index() {
        Integer id = getParaToInt();
        List<Product> products = Product.findTuijianProduct(id);
        setAttr("tuijianId", id);
    }

}
