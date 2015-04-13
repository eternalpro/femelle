package io.github.eternalpro.controller;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import com.jfinal.plugin.activerecord.Page;
import io.github.eternalpro.model.Image;
import io.github.eternalpro.model.Product;
import io.github.eternalpro.model.Tuijian;
import io.github.eternalpro.service.ProductService;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by gefangshuai on 2015/3/28.
 */
@ControllerBind(controllerKey = "/season", viewPath = "season")
public class SeasonController extends Controller {
    private ProductService productService = new ProductService();

    @ActionKey("/season")
    public void index() {
        Integer id = getParaToInt(0);

        if(id == null){
            List<Tuijian> tuijians = Tuijian.findTuijianY();
            if(tuijians != null && tuijians.size() > 0)
                id = tuijians.get(0).getInt("id");
        }

        int page = getParaToInt(1, 1);
        Page<Product> products = Product.pageTuijianProduct(id, page, 8);
        productService.addFirstImageToProduct(products.getList());

        setAttr("tuijianId", id);
        setAttr("products", products);
    }


    public void loadGalleria(){
        Integer productId = getParaToInt();
        List<Image> images = Image.dao.getImagesByProduct(productId);

        List<String> imagePaths = new ArrayList<>();
        for (Image image : images) {
            imagePaths.add(image.getStr("path"));
        }

        setAttr("imagePaths", imagePaths);
    }
}
