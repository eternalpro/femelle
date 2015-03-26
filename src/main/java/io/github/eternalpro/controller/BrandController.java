package io.github.eternalpro.controller;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import com.jfinal.plugin.activerecord.Record;
import io.github.eternalpro.constant.Module;
import io.github.eternalpro.model.Shop;
import io.github.eternalpro.model.SiteInfo;
import org.apache.commons.lang3.StringUtils;

import java.net.URLDecoder;
import java.util.List;

/**
 * Created by gefangshuai on 2015/3/26.
 */
@ControllerBind(controllerKey = "/brand", viewPath = "brand")
public class BrandController extends Controller{

    /**
     * 品牌介绍
     */
    @ActionKey("brand")
    public void brand() {
        SiteInfo brandInfo = SiteInfo.findByModule(Module.MODULE_BRAND);
        setAttr("brandInfo", brandInfo);
    }

    /**
     * 门店位置
     */
    public void shop(){
        SiteInfo shopInfo = SiteInfo.findByModule(Module.MODULE_SHOP);
        List<Record> records = Shop.dao.findProvinces();
        setAttr("shopInfo", shopInfo);
        if (records != null && records.size() > 0) {
            setAttr("currentP", records.get(0).getStr("province"));
        }
        setAttr("provinces", records);
    }

    /**
     * 加入我们
     */
    public void joinus(){
        SiteInfo joinusInfo = SiteInfo.findByModule(Module.MODULE_JOINUS);
        setAttr("joinusInfo", joinusInfo);
    }

    /**
     * 加盟
     */
    public void affiliate(){
        SiteInfo affiliateInfo = SiteInfo.findByModule(Module.MODULE_AFFILIATE);
        setAttr("affiliateInfo", affiliateInfo);
    }

    /**
     * 加载门店数据
     */
    public void loadShops(){
        String province = getPara();
        if(StringUtils.isNotBlank(province))
            setAttr("shops", Shop.dao.findByProvince(URLDecoder.decode(province)));
    }
}
