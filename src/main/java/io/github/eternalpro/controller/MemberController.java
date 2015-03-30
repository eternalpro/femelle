package io.github.eternalpro.controller;

import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import com.jfinal.kit.EncryptionKit;
import io.github.eternalpro.constant.Module;
import io.github.eternalpro.constant.SiteCST;
import io.github.eternalpro.core.FlashMessageUtils;
import io.github.eternalpro.model.Member;
import io.github.eternalpro.model.SiteInfo;
import org.apache.commons.lang3.StringUtils;

/**
 * Created by fangshuai on 2015-03-29-0029.
 */
@ControllerBind(controllerKey = "/member", viewPath = "member")
public class MemberController extends Controller {

    public void callus() {
        SiteInfo callusInfo = SiteInfo.findByModule(Module.MODULE_CALLUS);

        setAttr("callusInfo", callusInfo);
    }

    public void faq() {
        SiteInfo faqInfo = SiteInfo.findByModule(Module.MODULE_FAQ);

        setAttr("faqInfo", faqInfo);
    }

    public void signup() {

    }

    public void login() {

    }

    public void saveMember() {
        String password_confirm = getPara("password_confirm");
        Member member = getModel(Member.class);

        if (StringUtils.isBlank(password_confirm) || StringUtils.isBlank(member.getStr("password"))) {
            FlashMessageUtils.setErrorMessage(this, "请填写密码！");
            redirect("/member/signup");
        } else if (StringUtils.isBlank(member.getStr("username"))) {
            FlashMessageUtils.setErrorMessage(this, "请填写用户名！");
            redirect("/member/signup");
        } else if (Member.findByUsername(member.getStr("username")) != null) {
            FlashMessageUtils.setErrorMessage(this, "用户名已存在！");
            redirect("/member/signup");
        } else if (password_confirm.equals(member.getStr("password"))) {
            member.set("password", EncryptionKit.md5Encrypt(member.getStr("password")));
            member.save();
            FlashMessageUtils.setSuccessMessage(this, "注册成功，请登录！");
            redirect("/member/login");
        } else {
            FlashMessageUtils.setErrorMessage(this, "请确认两次输入的密码是否一致！");
            redirect("/member/signup");
        }
    }

    public void loginMember() {
        Member member = getModel(Member.class);
        if (StringUtils.isBlank(member.getStr("username"))) {
            FlashMessageUtils.setErrorMessage(this, "用户名不能为空！");
            redirect("/member/login");
        } else if (StringUtils.isBlank(member.getStr("password"))) {
            FlashMessageUtils.setErrorMessage(this, "密码不能为空！");
            redirect("/member/login");
        } else {

            Member dbMember = Member.findByUsername(member.getStr("username"));
            if (EncryptionKit.md5Encrypt(member.getStr("password")).equals(dbMember.getStr("password"))) {
                FlashMessageUtils.setSuccessMessage(this, "登录成功！");
                getSession().setAttribute(SiteCST.MEMBER_SESSION_LOGIN, dbMember);
                FlashMessageUtils.setSuccessMessage(this, "登录成功！");
                redirect("/");
            } else {
                FlashMessageUtils.setErrorMessage(this, "登录失败，请检查用户名密码是否正确！");
                redirect("/member/login");
            }
        }
    }

    public void logout(){
        getSession().removeAttribute(SiteCST.MEMBER_SESSION_LOGIN);
        FlashMessageUtils.setSuccessMessage(this, "退出成功！");
        redirect("/");
    }
}
