package io.github.eternalpro.service;

import io.github.eternalpro.constant.Module;
import io.github.eternalpro.constant.NewsCST;
import io.github.eternalpro.model.SiteInfo;
import org.apache.commons.lang3.StringUtils;

/**
 * Created by gefangshuai on 2015-03-22-0022.
 */
public class SiteInfoService {

    /**
     * 保存首页关于信息
     *
     * @param moduleabout
     */
    public void saveModuleabout(String moduleabout) {
        SiteInfo moduleaboutInfo = SiteInfo.findByModule(Module.MODULE_ABOUT);
        if (moduleaboutInfo != null) {
            moduleaboutInfo.set("title", moduleabout).update();
        } else {
            new SiteInfo().set("module", Module.MODULE_ABOUT).set("title", moduleabout).save();
        }

    }

    /**
     * 保存首页最新信息
     *
     * @param modulenews
     */
    public void saveModulenews(String modulenews) {
        SiteInfo modulenewsInfo = SiteInfo.findByModule(Module.MODULE_NEWS);
        if (modulenewsInfo != null) {
            modulenewsInfo.set("title", modulenews).update();
        } else {
            new SiteInfo().set("module", Module.MODULE_NEWS).set("title", modulenews).save();
        }
    }

    /**
     * 保存品牌故事
     *
     * @param brandInfo
     */
    public void saveBrandInfo(SiteInfo brandInfo) {
        SiteInfo brandInfoDB = SiteInfo.findByModule(Module.MODULE_BRAND);
        if (brandInfoDB != null) {
            if (StringUtils.isNotBlank(brandInfo.getStr("filepath")))
                brandInfo.set("filepath", brandInfoDB.get("filepath"));
            brandInfoDB.setAttrs(brandInfo).update();
        } else {
            brandInfo.set("module", Module.MODULE_BRAND).save();
        }

    }

    public void saveJoinus(SiteInfo joinusInfo) {
        SiteInfo joinusInfoDB = SiteInfo.findByModule(Module.MODULE_JOINUS);
        if (joinusInfoDB != null) {
            if (StringUtils.isNotBlank(joinusInfo.getStr("filepath")))
                joinusInfo.set("filepath", joinusInfoDB.get("filepath"));
            joinusInfoDB.setAttrs(joinusInfo).update();
        } else {
            joinusInfo.set("module", Module.MODULE_JOINUS).save();
        }
    }

    public void saveAffiliate(SiteInfo affiliateInfo) {
        SiteInfo affiliateInfoDB = SiteInfo.findByModule(Module.MODULE_AFFILIATE);
        if (affiliateInfoDB != null) {
            if (StringUtils.isNotBlank(affiliateInfo.getStr("filepath")))
                affiliateInfo.set("filepath", affiliateInfoDB.get("filepath"));
            affiliateInfoDB.setAttrs(affiliateInfo).update();
        } else {
            affiliateInfo.set("module", Module.MODULE_AFFILIATE).save();
        }
    }

    public void saveShop(SiteInfo shopInfo) {
        SiteInfo shopInfoDB = SiteInfo.findByModule(Module.MODULE_SHOP);
        if (shopInfoDB != null) {
            if (StringUtils.isNotBlank(shopInfo.getStr("filepath")))
                shopInfo.set("filepath", shopInfoDB.get("filepath"));
            shopInfoDB.setAttrs(shopInfo).update();
        } else {
            shopInfo.set("module", Module.MODULE_SHOP).save();
        }
    }

    /**
     * 保存首页视频文件
     *
     * @param fileName
     */
    public void saveHomeVideo(String fileName) {
        SiteInfo homeVideoDB = SiteInfo.findByModule(Module.MODULE_HOME_VIDEO);
        if (homeVideoDB != null) {
            homeVideoDB.set("filepath", fileName).update();
        } else {
            new SiteInfo()
                    .set("module", Module.MODULE_HOME_VIDEO)
                    .set("filepath", fileName)
                    .save();
        }
    }

    /**
     * 保存时尚动态
     *
     * @param fashionInfo
     */
    public void saveFashion(SiteInfo fashionInfo) {
        SiteInfo fashionInfoDB = SiteInfo.findByModule(NewsCST.FASHION);
        if (fashionInfoDB != null) {
            if (StringUtils.isNotBlank(fashionInfo.getStr("filepath")))
                fashionInfo.set("filepath", fashionInfoDB.get("filepath"));
            fashionInfoDB.setAttrs(fashionInfo).update();
        } else {
            fashionInfo.set("module", NewsCST.FASHION).save();
        }
    }

    /**
     * 保存新闻资讯
     *
     * @param newsInfo
     */
    public void saveNews(SiteInfo newsInfo) {
        SiteInfo newsInfoDB = SiteInfo.findByModule(NewsCST.NEWS);
        if (newsInfoDB != null) {
            if (StringUtils.isNotBlank(newsInfo.getStr("filepath")))
                newsInfo.set("filepath", newsInfoDB.get("filepath"));
            newsInfoDB.setAttrs(newsInfo).update();
        } else {
            newsInfo.set("module", NewsCST.NEWS).save();
        }
    }

    public void saveVIP(SiteInfo vipInfo) {
        SiteInfo vipInfoDB = SiteInfo.findByModule(Module.MODULE_VIP);
        if (vipInfoDB != null) {
            if (StringUtils.isNotBlank(vipInfo.getStr("filepath")))
                vipInfo.set("filepath", vipInfoDB.get("filepath"));
            vipInfoDB.setAttrs(vipInfo).update();
        } else {
            vipInfo.set("module", Module.MODULE_VIP).save();
        }
    }

    public void saveTmall(SiteInfo tmallInfo) {
        SiteInfo tmallInfoDB = SiteInfo.findByModule(Module.MODULE_VIP);
        if (tmallInfoDB != null) {
            if (StringUtils.isNotBlank(tmallInfo.getStr("filepath")))
                tmallInfo.set("filepath", tmallInfoDB.get("filepath"));
            tmallInfoDB.setAttrs(tmallInfo).update();
        } else {
            tmallInfo.set("module", Module.MODULE_VIP).save();
        }
    }
}
