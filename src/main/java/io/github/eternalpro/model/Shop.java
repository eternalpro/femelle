package io.github.eternalpro.model;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Record;

import java.util.List;

/**
 * 门店
 * Created by gefangshuai on 2015-03-24-0024.
 */
public class Shop extends Model<Shop>{
    public static final Shop dao = new Shop();

    public List<Record> findProvinces() {
        return Db.find("select province from shop group by province order by id");
    }

    public List<Shop> findByProvince(String province){
        return dao.find("select * from shop where province = ?", province);
    }
}
