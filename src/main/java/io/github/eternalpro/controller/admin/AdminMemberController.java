package io.github.eternalpro.controller.admin;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import io.github.eternalpro.model.Member;

import java.util.List;

/**
 * Created by fangshuai on 2015-03-30-0030.
 */
@ControllerBind(controllerKey = "/admin/member", viewPath = "admin/member")
public class AdminMemberController extends Controller {

    @ActionKey("/admin/member")
    public void index() {
        List<Member> members = Member.dao.find("select * from member");
        setAttr("members", members);
    }

}
