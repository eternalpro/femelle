package io.github.eternalpro.model;

import com.jfinal.ext.plugin.tablebind.TableBind;
import com.jfinal.plugin.activerecord.Model;

import java.util.List;

/**
 * Created by gefangshuai on 2015/3/27.
 */
@TableBind(tableName = "image", pkName = "id")
public class Image extends Model<Image> {
    public static final Image dao = new Image();

    public List<Image> getImagesByProduct(Integer productId) {
        return Image.dao.find("select * from image where productid = ?", productId);
    }

    public List<Image> getImagesByAlbum(Integer albumId) {
        return Image.dao.find("select * from image where albumid = ?", albumId);
    }
}
