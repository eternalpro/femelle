package io.github.eternalpro.service;

import io.github.eternalpro.model.Image;
import io.github.eternalpro.model.News;
import io.github.eternalpro.model.Product;
import io.github.eternalpro.utils.StrUtils;

import java.util.List;

/**
 * Created by gefangshuai on 2015/3/27.
 */
public class ProductService {

    public void saveProduct(Product product) {
        if (product.get("id") != null) {
            product.update();
        } else {
            product.save();
        }
    }

    public void abstractProducts(List<Product> products, int length) {

        for (Product product : products) {
            product.set("description", StrUtils.getAbstract(product.getStr("description"), length));
        }
    }

    public void addFirstImageToProduct(List<Product> products){
        for (Product product : products) {
            List<Image> images = Image.dao.getImagesByProduct(product.getInt("id"));
            if (images.size() > 0)
                product.set("imagepath", images.get(0).getStr("path"));
        }
    }
}
