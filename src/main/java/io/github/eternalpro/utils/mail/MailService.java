package io.github.eternalpro.utils.mail;

import io.github.eternalpro.constant.SystemCST;
import io.github.eternalpro.model.*;
import io.github.eternalpro.model.System;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

/**
 * Created by fangshuai on 2015-04-13-0013.
 */
public class MailService {
    private static MailService ourInstance = new MailService();


    public static MailService getInstance() {
        return ourInstance;
    }

    private MailService() {
    }

    private Properties getProperties (){
        String mailHost = System.dao.findByKey(SystemCST.MAIL_HOST).getStr("value");

        Properties props = new Properties();
        // 开启debug调试
        props.setProperty("mail.debug", "false");
        // 发送服务器需要身份验证
        props.setProperty("mail.smtp.auth", "true");
        // 设置邮件服务器主机名
        props.setProperty("mail.host", mailHost);   // "smtp.163.com"
        // 发送邮件协议名称
        props.setProperty("mail.transport.protocol", "smtp");

        return props;
    }

    /**
     *
     * @param subject 主题
     * @param text  内容
     * @param addresses 收件人
     * @throws MessagingException
     */
    public void sendMail(String subject, String text, Address[] addresses) throws MessagingException {
        String mailUsername = System.dao.findByKey(SystemCST.MAIL_USERNAME).getStr("value");
        String mailPassword = System.dao.findByKey(SystemCST.MAIL_PASSWORD).getStr("value");
        String mailAddress = System.dao.findByKey(SystemCST.MAIL_ADDRESS).getStr("value");

        // 设置环境信息
        Session session = Session.getInstance(getProperties());

        // 创建邮件对象
        MimeMessage msg = new MimeMessage(session);
        // 邮件标题
        msg.setSubject(subject);
        // 设置邮件内容

        msg.setText(text, "utf-8", "html");
        // 设置发件人
        msg.setFrom(new InternetAddress(mailAddress));

        Transport transport = session.getTransport();
        // 连接邮件服务器
        transport.connect(mailUsername, mailPassword);
        // 发送邮件（设置收件人）
        transport.sendMessage(msg, addresses);   // new Address[] {new InternetAddress("99220202@qq.com")}
        // 关闭连接
        transport.close();
    }


}
