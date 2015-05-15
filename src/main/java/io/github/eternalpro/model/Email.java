package io.github.eternalpro.model;

import com.jfinal.ext.plugin.tablebind.TableBind;
import com.jfinal.plugin.activerecord.Model;

import java.util.List;

/**
 * Created by gefangshuai on 2015-05-15-0015.
 */
@TableBind(tableName = "email", pkName = "id")
public class Email extends Model<Email>{
    public static final Email dao = new Email();

    public void saveOrUpdate(){
        Integer id = this.get("id");
        if (id != null && id > 0) {
            update();
        }else{
            save();
        }
    }

    public void saveEmail(String email) {
        Email dbEmail = Email.dao.findFirst("select * from email where email = ?", email);
        if(dbEmail == null) {
            dbEmail = new Email();
            dbEmail.set("email", email);
            dbEmail.save();
        }
    }

    public List<Email> findAll() {
        return dao.find("select * from email order by id desc");
    }
}
