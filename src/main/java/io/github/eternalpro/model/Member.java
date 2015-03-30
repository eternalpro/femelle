package io.github.eternalpro.model;

import com.jfinal.plugin.activerecord.Model;

/**
 * Created by fangshuai on 2015-03-29-0029.
 */
public class Member extends Model<Member>{
    public static final Member dao = new Member();

    public static Member findByUsername(String username) {
        return dao.findFirst("select * from member where username = ?", username);
    }
}
