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
        saveSite(brandInfo, Module.MODULE_BRAND);

    }

    public void saveJoinus(SiteInfo joinusInfo) {
        saveSite(joinusInfo, Module.MODULE_JOINUS);
    }

    public void saveAffiliate(SiteInfo affiliateInfo) {
        saveSite(affiliateInfo, Module.MODULE_AFFILIATE);
    }

    public void saveShop(SiteInfo shopInfo) {
        saveSite(shopInfo, Module.MODULE_SHOP);
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
        saveSite(fashionInfo, NewsCST.FASHION);

    }

    /**
     * 保存新闻资讯
     *
     * @param newsInfo
     */
    public void saveNews(SiteInfo newsInfo) {
        saveSite(newsInfo, NewsCST.NEWS);
    }

    public void saveVIP(SiteInfo vipInfo) {
        saveSite(vipInfo, Module.MODULE_VIP);
    }

    public void saveTmall(SiteInfo tmallInfo) {
        saveSite(tmallInfo, Module.MODULE_TMALL);
    }

    private void saveSite(SiteInfo siteInfo, String module) {
        SiteInfo siteInfoDB = SiteInfo.findByModule(module);
        if (siteInfoDB != null) {
            if (StringUtils.isBlank(siteInfoDB.getStr("filepath")))
                siteInfo.set("filepath", siteInfoDB.get("filepath"));
            siteInfoDB.setAttrs(siteInfo).update();
        } else {
            siteInfo.set("module", module).save();
        }
    }
}
