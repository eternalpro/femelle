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
import java.util.List;

/**
 * Created by fangshuai on 2015-04-13-0013.
 */
@ControllerBind(controllerKey = "/admin/mail", viewPath = "admin/mail")
public class AdminMailController extends Controller{

    @ActionKey("/admin/mail")
    public void index(){
        System mailHost = System.dao.findByKey(SystemCST.MAIL_HOST);
        System mailAddress = System.dao.findByKey(SystemCST.MAIL_ADDRESS);
        System mailUsername = System.dao.findByKey(SystemCST.MAIL_USERNAME);
        System mailPassword = System.dao.findByKey(SystemCST.MAIL_PASSWORD);

        setAttr("mailHost", mailHost);
        setAttr("mailAddress", mailAddress);
        setAttr("mailUsername", mailUsername);
        setAttr("mailPassword", mailPassword);
    }

    public void save() {
        String mailHost = getPara("mailHost");
        String mailAddress = getPara("mailAddress");
        String mailUsername = getPara("mailUsername");
        String mailPassword = getPara("mailPassword");

        System.dao.saveValue(SystemCST.MAIL_HOST, mailHost);
        System.dao.saveValue(SystemCST.MAIL_ADDRESS, mailAddress);
        System.dao.saveValue(SystemCST.MAIL_USERNAME, mailUsername);
        System.dao.saveValue(SystemCST.MAIL_PASSWORD, mailPassword);

        FlashMessageUtils.setSuccessMessage(this, "保存成功！");
        redirect("/admin/mail");

    }

    public void welcomeTemplate() {
        System subject = System.dao.findByKey(SystemCST.MAIL_WELCOME_TEMPLATE_SUBJECT);
        System content = System.dao.findByKey(SystemCST.MAIL_WELCOME_TEMPLATE_TEXT);
        setAttr("subject", subject);
        setAttr("content", content);
    }

    public void saveWelcomeTemplate() {
        String mailSubject = getPara("mailSubject");
        String mailContent = getPara("mailContent");

        System.dao.saveValue(SystemCST.MAIL_WELCOME_TEMPLATE_SUBJECT, mailSubject);
        System.dao.saveValue(SystemCST.MAIL_WELCOME_TEMPLATE_TEXT, mailContent);

        FlashMessageUtils.setSuccessMessage(this, "保存成功！");
        redirect("/admin/mail/welcomeTemplate");
    }


    public void listEmails(){
        List<Email> emails = Email.dao.findAll();
        setAttr("emails", emails);
    }

    public void writeMail() {
        List<Member> members = Member.dao.find("select * from member");
        setAttr("members", members);
    }

    public void deleteMail(){
        Integer id = getParaToInt();
        Email.dao.deleteById(id);
        FlashMessageUtils.setSuccessMessage(this, "邮箱删除成功！！");
        redirect("/admin/mail/listEmails");
    }

    /**
     * 推送邮件
     */
    public void pushMail() throws AddressException {
        String mailSubject = getPara("mailSubject", "");
        String mailText = getPara("mailText", "");

        List<Address> addressList = new ArrayList<>();
        List<Email> emails = Email.dao.findAll();

        for (Email email : emails) {
            addressList.add(new InternetAddress(email.getStr("email")));
        }

        Address[] addressArray = new Address[addressList.size()];

        if (StringUtils.isBlank(mailSubject)) {
            FlashMessageUtils.setErrorMessage(this, "请定义邮件模版主题！");
        } else if (StringUtils.isBlank(mailText)) {
            FlashMessageUtils.setErrorMessage(this, "请定义邮件模版内容！");
        } else {
            try {
                MailService.getInstance().sendMail(mailSubject, mailText, addressList.toArray(addressArray));
            } catch (MessagingException e) {
                FlashMessageUtils.setErrorMessage(this, "邮件推送失败！" + e.getMessage());
            }
            FlashMessageUtils.setSuccessMessage(this, "邮件推送成功！");
        }
        redirect("/admin/mail/listEmails");
    }
}
