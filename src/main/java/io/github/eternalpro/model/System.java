package io.github.eternalpro.model;

import com.jfinal.ext.plugin.tablebind.TableBind;
import com.jfinal.plugin.activerecord.Model;

/**
 * Created by gefangshuai on 2015/3/25.
 */
@TableBind(tableName = "system", pkName = "id")
public class System extends Model<System>{
    public static final System dao = new System();

    public System findByKey(String key) {
        return dao.findFirst("select * from system where name = ?", key);
    }

    public void saveValue(String key, String value) {
        System system = dao.findByKey(key);
        if(system == null)
            system = new System();
        system.set("name", key);
        system.set("value", value);
        system.saveOrUpdate();
    }

    public void saveOrUpdate(){
        Integer id = this.get("id");
        if (id != null && id > 0) {
            update();
        }else{
            save();
        }
    }
}
