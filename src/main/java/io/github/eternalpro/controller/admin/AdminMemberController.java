package io.github.eternalpro.controller.admin;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import io.github.eternalpro.constant.SystemCST;
import io.github.eternalpro.core.FlashMessageUtils;
import io.github.eternalpro.model.*;
import io.github.eternalpro.model.System;
import io.github.eternalpro.utils.mail.MailService;
import org.apache.commons.lang3.StringUtils;

import javax.mail.Address;
import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import java.util.ArrayList;
import java.util.Collections;
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
