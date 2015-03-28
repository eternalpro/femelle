package io.github.eternalpro.model;

import com.jfinal.plugin.activerecord.Model;

/**
 * Created by gefangshuai on 2015/3/27.
 */
public class Product extends Model<Product> {
    public static final Product dao = new Product();

    /**
     * 衣服类型
     */
    public enum Type{
        大衣,
        毛衣,
        风衣,
        连衣裙,
        短裙,
        裤子,
        皮革
    }
}
