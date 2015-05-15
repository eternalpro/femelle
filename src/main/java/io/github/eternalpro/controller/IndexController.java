package io.github.eternalpro.controller;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import com.jfinal.kit.EncryptionKit;
import com.jfinal.plugin.activerecord.Record;
import io.github.eternalpro.constant.Module;
import io.github.eternalpro.constant.NewsCST;
import io.github.eternalpro.core.FlashMessageUtils;
import io.github.eternalpro.model.*;
import org.apache.commons.lang3.StringUtils;

import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by fangshuai on 2015-03-17-0017.
 */
@ControllerBind(controllerKey = "/", viewPath = "")
public class IndexController extends Controller{
    /**
     * 首页
     */
    @ActionKey("/")
    public void index() {
        SiteInfo videoInfo = SiteInfo.findByModule(Module.MODULE_HOME_VIDEO);
        setAttr("videoInfo", videoInfo);

        SiteInfo fashionInfo = SiteInfo.findByModule(NewsCST.FASHION);
        setAttr("fashionInfo", fashionInfo);

        SiteInfo newsInfo = SiteInfo.findByModule(NewsCST.NEWS);
        setAttr("newsInfo", newsInfo);

        SiteInfo modulenewsInfo = SiteInfo.findByModule(Module.MODULE_NEWS);
        setAttr("modulenewsInfo", modulenewsInfo);


        SiteInfo moduleaboutInfo = SiteInfo.findByModule(Module.MODULE_ABOUT);
        setAttr("moduleaboutInfo", moduleaboutInfo);

        SiteInfo albumInfo = SiteInfo.findByModule(Module.MODULE_ALBUM);
        setAttr("albumInfo", albumInfo);


        List<Album> albums = Album.findTuijianY();

        Product.Type[] types = Product.Type.values();

        setAttr("types", types);
        setAttr("albums", albums);

        List<Tuijian> tuijians = Tuijian.findTuijianY();
        setAttr("tuijians", tuijians);

    }

    public void provision(){
        SiteInfo provisionInfo = SiteInfo.findByModule(Module.MODULE_PROVISION);
        setAttr("provisionInfo", provisionInfo);
    }


    public void demo() {
    }

    public void subscribe(){
        String email = getPara("email");
        if (StringUtils.isNotBlank(email)) {
            Email.dao.saveEmail(email);
        }
        renderNull();
    }


}
