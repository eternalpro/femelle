package io.github.eternalpro.controller;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import io.github.eternalpro.constant.NewsCST;
import io.github.eternalpro.model.SiteInfo;

/**
 * 资讯管理
 * Created by gefangshuai on 2015/3/26.
 */
@ControllerBind(controllerKey = "/news", viewPath = "news")
public class NewsController extends Controller{

    @ActionKey("/news")
    public void fashion() {
        SiteInfo fashionInfo = SiteInfo.findByModule(NewsCST.FASHION);
        setAttr("fashionInfo", fashionInfo);
    }

    public void news(){
        SiteInfo newsInfo = SiteInfo.findByModule(NewsCST.NEWS);
        setAttr("newsInfo", newsInfo);
    }
}
