package io.github.eternalpro.service;

import com.jfinal.kit.EncryptionKit;
import io.github.eternalpro.model.Member;
import io.github.eternalpro.utils.mail.MailService;

import javax.mail.Address;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;

/**
 * Created by gefangshuai on 2015-05-16-0016.
 */
public class MemberService {

    /**
     * 发送重置密码邮件
     *
     * @param email
     * @throws AddressException
     */
    public void sendResetPasswordEmail(String email) throws Exception {
        MailService.getInstance().sendMail("重置您的账号密码", getContent(email), new Address[]{new InternetAddress(email)});

    }

    /**
     * 根据邮件获取内容
     *
     * @param email
     * @return
     */
    private String getContent(String email) {
        String link = getLink(email);
        StringBuilder sb = new StringBuilder("<p>请点击");
        sb.append(link);
        sb.append("重置您的密码。</p>");
        sb.append("<p>");
        sb.append("如果您没有请求重置密码，请忽略此邮件，其他用户可能在尝试重置他们自己的密码的时候错误地输入了您的邮件地址。");
        sb.append("</p>");
        sb.append("<br />");
        sb.append("<br />");
        sb.append("谢谢！");
        sb.append("<p>法米拉账户团队</p>");
        return sb.toString();
    }

    /**
     * 获取重置密码连接
     *
     * @param email
     * @return
     */
    private String getLink(String email) {
        Member member = Member.findByEmail(email);
        StringBuilder sb = new StringBuilder("<a href='http://www.alpha-femelle.com/member/resetPassword/"
                + EncryptionKit.sha1Encrypt(member.getStr("email"))
                + "?email="
                + email
                + "'>这里</a>");
        return sb.toString();
    }
}
