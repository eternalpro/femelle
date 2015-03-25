package io.github.eternalpro.core;

import com.jfinal.aop.Interceptor;
import com.jfinal.core.ActionInvocation;
import io.github.eternalpro.constant.SiteCST;

import javax.servlet.http.HttpSession;

/**
 * Created by gefangshuai on 2015/3/25.
 */
public class AdminInterceptor implements Interceptor {
    @Override
    public void intercept(ActionInvocation ai) {
        String controllerKey = ai.getControllerKey();
        if (controllerKey.startsWith("/admin")) {
            HttpSession session = ai.getController().getSession();
            Boolean sessionValue = (Boolean) session.getAttribute(SiteCST.SESSION_LOGIN);
            if (sessionValue != null && sessionValue) {
                ai.invoke();
            }else {
                ai.getController().redirect("/admin/login");
            }
        }
    }
}
