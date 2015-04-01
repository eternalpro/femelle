package io.github.eternalpro.model;

import com.jfinal.ext.plugin.tablebind.TableBind;
import com.jfinal.plugin.activerecord.Model;

/**
 * Created by fangshuai on 2015-03-29-0029.
 */
@TableBind(tableName = "member", pkName = "id")
public class Member extends Model<Member>{
    public static final Member dao = new Member();

    public static Member findByUsername(String username) {
        return dao.findFirst("select * from member where username = ?", username);
    }

    public static Member findByEmail(String email) {
        return dao.findFirst("select * from member where email = ?", email);
    }
}
