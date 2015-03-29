package io.github.eternalpro.controller;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import io.github.eternalpro.core.FlashMessageUtils;
import io.github.eternalpro.model.Image;
import io.github.eternalpro.model.Product;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

/**
 * Created by gefangshuai on 2015/3/28.
 */
@ControllerBind(controllerKey = "/product", viewPath = "product")
public class ProductController extends Controller {

    @ActionKey("product")
    public void type() throws UnsupportedEncodingException {
        String type = getPara();

        List<Product> products = Product.dao.find("select * from product where type = ?", URLDecoder.decode(type, "utf-8"));

        for (Product product : products) {
            List<Image> images = Image.dao.getImagesByProduct(product.getInt("id"));
            if (images.size() > 0)
                product.set("imagepath", images.get(0).getStr("path"));
        }

        setAttr("types", Product.Type.values());
        setAttr("type", URLDecoder.decode(type, "utf-8"));
        setAttr("products", products);
        renderJsp("index.jsp");
    }


    public void item() {
        Integer id = getParaToInt();
        Product product = Product.dao.findById(id);
        List<Image> images = Image.dao.getImagesByProduct(id);

        List<Product> recommends = Product.findRecommend(id);

        setAttr("types", Product.Type.values());
        setAttr("recommends", recommends);
        setAttr("product", product);
        setAttr("images", images);
    }

    public void itemPrev() {
        Integer id = getParaToInt();
        Integer pid;

        Product prevProduct = Product.dao.findFirst("select * from product where id < ? order by id desc", id);

        if (prevProduct == null) {
            pid = id;
            FlashMessageUtils.setInfoMessage(this, "已经是第一条记录了！");
        } else {
            pid = prevProduct.getInt("id");
        }
        redirect("/product/item/" + pid);
    }

    public void itemNext() {
        Integer id = getParaToInt();
        Integer nid;

        Product prevProduct = Product.dao.findFirst("select * from product where id > ?", id);

        if (prevProduct == null) {
            nid = id;
            FlashMessageUtils.setInfoMessage(this, "已经是最后一条记录了！");
        } else {
            nid = prevProduct.getInt("id");
        }
        redirect("/product/item/" + nid);

    }
}
