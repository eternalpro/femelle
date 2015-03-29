package io.github.eternalpro.controller;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import com.jfinal.kit.EncryptionKit;
import com.jfinal.plugin.activerecord.Record;
import io.github.eternalpro.constant.Module;
import io.github.eternalpro.model.Shop;
import io.github.eternalpro.model.SiteInfo;
import io.github.eternalpro.model.Tuijian;
import org.apache.commons.lang3.StringUtils;

import java.net.URLDecoder;
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

        List<Tuijian> tuijians = Tuijian.findTuijianY();
        setAttr("tuijians", tuijians);

    }




    public void demo() {
    }


}
