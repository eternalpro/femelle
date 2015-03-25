package io.github.eternalpro.service;

import io.github.eternalpro.constant.Module;
import io.github.eternalpro.model.SiteInfo;

/**
 * Created by gefangshuai on 2015-03-22-0022.
 */
public class SiteInfoService {

    /**
     * 保存首页关于信息
     * @param moduleabout
     */
    public void saveModuleabout(String moduleabout) {
        SiteInfo moduleaboutInfo = SiteInfo.findByModule(Module.MODULE_ABOUT);
        if (moduleaboutInfo != null) {
            moduleaboutInfo.set("title", moduleabout).update();
        }else{
            new SiteInfo().set("module", Module.MODULE_ABOUT).set("title", moduleabout).save();
        }

    }

    /**
     * 保存首页最新信息
     * @param modulenews
     */
    public void saveModulenews(String modulenews){
        SiteInfo modulenewsInfo = SiteInfo.findByModule(Module.MODULE_NEWS);
        if (modulenewsInfo != null) {
            modulenewsInfo.set("title", modulenews).update();
        }else{
            new SiteInfo().set("module", Module.MODULE_NEWS).set("title", modulenews).save();
        }
    }

    /**
     * 保存品牌故事
     * @param brandInfo
     */
    public void saveBrandInfo(SiteInfo brandInfo) {
        SiteInfo brandInfoDB = SiteInfo.findByModule(Module.MODULE_BRAND);
        if (brandInfoDB != null) {
            brandInfoDB.setAttrs(brandInfo).update();
        }else{
            brandInfo.set("module", Module.MODULE_BRAND).save();
        }

    }

    public void saveJoinus(SiteInfo joinusInfo) {
        SiteInfo joinusInfoDB = SiteInfo.findByModule(Module.MODULE_JOINUS);
        if (joinusInfoDB != null) {
            joinusInfoDB.setAttrs(joinusInfo).update();
        }else{
            joinusInfo.set("module", Module.MODULE_JOINUS).save();
        }
    }

    public void saveAffiliate(SiteInfo affiliateInfo) {
        SiteInfo affiliateInfoDB = SiteInfo.findByModule(Module.MODULE_AFFILIATE);
        if (affiliateInfoDB != null) {
            affiliateInfoDB.setAttrs(affiliateInfo).update();
        }else{
            affiliateInfo.set("module", Module.MODULE_AFFILIATE).save();
        }
    }

    public void saveShop(SiteInfo shopInfo) {
        SiteInfo shopInfoDB = SiteInfo.findByModule(Module.MODULE_SHOP);
        if (shopInfoDB != null) {
            shopInfoDB.setAttrs(shopInfo).update();
        }else{
            shopInfo.set("module", Module.MODULE_SHOP).save();
        }
    }
}
