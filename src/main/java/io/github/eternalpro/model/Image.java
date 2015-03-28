package io.github.eternalpro.model;

import com.jfinal.plugin.activerecord.Model;

import java.util.List;

/**
 * Created by gefangshuai on 2015/3/27.
 */
public class Image extends Model<Image> {
    public static final Image dao = new Image();

    public List<Image> getImagesByProduct(Integer productId) {
        return Image.dao.find("select * from image where productid = ?", productId);
    }
}
