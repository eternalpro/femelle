package io.github.eternalpro.controller;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import io.github.eternalpro.model.Product;

import java.net.URLDecoder;
import java.util.List;

/**
 * Created by gefangshuai on 2015/3/28.
 */
@ControllerBind(controllerKey = "/product", viewPath = "product")
public class ProductController extends Controller{

    @ActionKey("product")
    public void type(){
        String type = getPara();

        List<Product> products = Product.dao.find("select * from product where type = ?", URLDecoder.decode(type));
        setAttr("types", Product.Type.values());
        setAttr("type", URLDecoder.decode(type));
        setAttr("products", products);
        renderJsp("index.jsp");
    }


    public void item(){
        Integer id = getParaToInt();
        Product product = Product.dao.findById(id);
        setAttr("types", Product.Type.values());
        setAttr("product", product);
    }
}
