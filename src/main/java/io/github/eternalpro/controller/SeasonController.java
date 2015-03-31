package io.github.eternalpro.controller;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import com.jfinal.plugin.activerecord.Page;
import io.github.eternalpro.model.Image;
import io.github.eternalpro.model.Product;
import io.github.eternalpro.model.Tuijian;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by gefangshuai on 2015/3/28.
 */
@ControllerBind(controllerKey = "/season", viewPath = "season")
public class SeasonController extends Controller {

    @ActionKey("/season")
    public void index() {
        Integer id = getParaToInt(0);
        int page = getParaToInt(1, 1);
        Page<Product> products = Product.pageTuijianProduct(id, page, 8);
        if (id == null && products != null && products.getList().size() > 0) {  // 默认显示第一个
            id = products.getList().get(0).getInt("id");
        }
        setAttr("tuijianId", id);
        setAttr("products", products);
    }


    public void loadGalleria(){
        Integer productId = getParaToInt();
        Product product = Product.dao.findById(productId);
        List<Image> images = Image.dao.getImagesByProduct(productId);

        List<String> imagePaths = new ArrayList<>();
        imagePaths.add(product.getStr("imagepath"));
        for (Image image : images) {
            imagePaths.add(image.getStr("path"));
        }

        setAttr("imagePaths", imagePaths);
    }
}
