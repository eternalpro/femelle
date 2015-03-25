package io.github.eternalpro.controller;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import com.jfinal.plugin.activerecord.DbKit;
import com.jfinal.plugin.activerecord.Record;
import io.github.eternalpro.constant.Module;
import io.github.eternalpro.model.Shop;
import io.github.eternalpro.model.SiteInfo;
import io.github.eternalpro.service.SiteInfoService;

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
    public void index(){

    }

    /**
     * 品牌介绍
     */
    public void brand() {
        SiteInfo brandInfo = SiteInfo.findByModule(Module.MODULE_BRAND);
        setAttr("brandInfo", brandInfo);
    }

    public void shop(){
        SiteInfo shopInfo = SiteInfo.findByModule(Module.MODULE_SHOP);
        List<Record> records = Shop.dao.findProvinces();
        setAttr("shopInfo", shopInfo);
        if (records != null && records.size() > 0) {
            setAttr("currentP", records.get(0).getStr("province"));
        }
        setAttr("provinces", records);
    }

    public void loadShops(){
        String province = getPara();
        setAttr("shops", Shop.dao.findByProvince(URLDecoder.decode(province)));
    }

    public void demo(){

    }
}
