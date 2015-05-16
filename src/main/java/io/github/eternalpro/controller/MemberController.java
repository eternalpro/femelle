package io.github.eternalpro.controller;

import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import com.jfinal.kit.EncryptionKit;
import com.jfinal.kit.PathKit;
import io.github.eternalpro.constant.Module;
import io.github.eternalpro.constant.SiteCST;
import io.github.eternalpro.constant.SystemCST;
import io.github.eternalpro.core.FlashMessageUtils;
import io.github.eternalpro.model.*;
import io.github.eternalpro.model.System;
import io.github.eternalpro.service.MemberService;
import io.github.eternalpro.utils.mail.MailService;
import org.apache.commons.lang3.StringUtils;

import javax.mail.Address;
import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;

/**
 * Created by fangshuai on 2015-03-29-0029.
 */
@ControllerBind(controllerKey = "/member", viewPath = "member")
public class MemberController extends Controller {
    private MemberService memberService = new MemberService();

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

        String agree = getPara("agree");
        if (!"on".equals(agree)) {
            FlashMessageUtils.setErrorMessage(this, "请同意服务条款！");
            redirect("/member/signup");
        } else if (StringUtils.isBlank(password_confirm) || StringUtils.isBlank(member.getStr("password"))) {
            FlashMessageUtils.setErrorMessage(this, "请填写密码！");
            redirect("/member/signup");
        } else if (StringUtils.isBlank(member.getStr("username"))) {
            FlashMessageUtils.setErrorMessage(this, "请填写用户名！");
            redirect("/member/signup");
        } else if (Member.findByUsername(member.getStr("username")) != null) {
            FlashMessageUtils.setErrorMessage(this, "用户名已存在！");
            redirect("/member/signup");
        } else if (Member.findByEmail(member.getStr("email")) != null) {
            FlashMessageUtils.setErrorMessage(this, "邮箱已被注册！");
            redirect("/member/signup");
        } else if (password_confirm.equals(member.getStr("password"))) {
            member.set("password", EncryptionKit.md5Encrypt(member.getStr("password")));
            member.save();

            Email.dao.saveEmail(member.getStr("email"));

            String subject = System.dao.findByKey(SystemCST.MAIL_WELCOME_TEMPLATE_SUBJECT).get("value");
            String content = System.dao.findByKey(SystemCST.MAIL_WELCOME_TEMPLATE_TEXT).get("value");

            try {
                MailService.getInstance().sendMail(subject, content, new Address[]{new InternetAddress(member.getStr("email"))});
            } catch (Exception e) {
                FlashMessageUtils.setErrorMessage(this, "欢迎邮件发送失败，请联系管理员！" + e.getMessage());
            }

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
            if (dbMember == null) {
                FlashMessageUtils.setErrorMessage(this, "用户不存在！");
                redirect("/member/login");
            } else if (EncryptionKit.md5Encrypt(member.getStr("password")).equals(dbMember.getStr("password"))) {
                getSession().setAttribute(SiteCST.MEMBER_SESSION_LOGIN, dbMember);
                FlashMessageUtils.setSuccessMessage(this, "登录成功！");
                redirect("/");
            } else {
                FlashMessageUtils.setErrorMessage(this, "登录失败，请检查用户名密码是否正确！");
                redirect("/member/login");
            }
        }
    }

    public void socialLogin() {
        String nickname = getPara("nickname");
        String social = getPara("social");
        Member member = new Member();
        member.set("username", nickname);
        member.put("social", social);

        if ("qq".equals(social)) {
            member.put("figureurl", getPara("figureurl"));

        }

        getSession().setAttribute(SiteCST.MEMBER_SESSION_LOGIN, member);
        FlashMessageUtils.setSuccessMessage(this, "登录成功！");
        redirect("/");
    }

    public void logout() {
        getSession().removeAttribute(SiteCST.MEMBER_SESSION_LOGIN);
        FlashMessageUtils.setSuccessMessage(this, "退出成功！");
        redirect("/");
    }

    public void qq() {

    }

    public void forgetPassword(){
        String email = getPara("email");
        Member member = Member.dao.findByEmail(email);
        if(member != null){
            try {
                memberService.sendResetPasswordEmail(email);
            } catch (Exception e) {
                FlashMessageUtils.setErrorMessage(this, "服务器错误，请稍后重试！");
            }
            FlashMessageUtils.setSuccessMessage(this, "系统已向您发送了一封重置密码的邮件，请注意查收！");
        }else{
            FlashMessageUtils.setErrorMessage(this, "你的邮箱地址输入不正确！");
        }
        redirect("/member/login");
    }

    public void resetPassword(){
        String p = getPara();
        String email = getPara("email");
        if(!p.equals(EncryptionKit.sha1Encrypt(email))){
            FlashMessageUtils.setErrorMessage(this, "连接无效！");
            redirect("/");
        }else {
            setAttr("email", email);
        }
    }

    public void savePassword(){
        String email = getPara("email");
        String password = getPara("password");
        String confirmPassword = getPara("confirmPassword");
        if (password != null && password.equals(confirmPassword)) {
            Member member = Member.findByEmail(email);
            member.set("password", EncryptionKit.md5Encrypt(password));
            member.update();
            FlashMessageUtils.setSuccessMessage(this, "密码重置成功，请登录！");
            redirect("/member/login");
        }else{
            FlashMessageUtils.setErrorMessage(this, "密码重置失败！");
            redirect("/");
        }
    }
}
