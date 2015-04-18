package io.github.eternalpro.model;

import com.jfinal.ext.plugin.tablebind.TableBind;
import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;

import java.util.List;

/**
 * Created by gefangshuai on 2015/3/27.
 */
@TableBind(tableName = "product", pkName = "id")
public class Product extends Model<Product> {
    public static final Product dao = new Product();

    public static List<Product> findRecommend(Integer id) {
        return dao.find("select * from product where id in (select productid from recommend where mainid = ?)", id);
    }

    public static List<Product> findNotRecommend(Integer id) {
        return dao.find("select * from product where id <> ? and id not in (select productid from recommend where mainid = ?)", id, id);
    }

    public static List<Product> findTuijianProduct(Integer tuijianId) {
        return dao.find("select * from product where tuijianid = ?", tuijianId);
    }

    public static Page<Product> pageTuijianProduct(Integer tuijianId, int pageNumber, int pageSize) {
        return dao.paginate(pageNumber, pageSize, "select * ", "from product where tuijianid = ?", tuijianId);


    }

    public static List<Product> findNoTuijianProduct(Integer tuijianId) {
        return dao.find("select * from product where tuijianid is null");
    }


    /**
     * 衣服类型
     */
    public enum Type{
        上衣,
        大衣,
        针织衫,
        风衣,
        连衣裙,
        短裙,
        裤子,
        皮革
    }
}
