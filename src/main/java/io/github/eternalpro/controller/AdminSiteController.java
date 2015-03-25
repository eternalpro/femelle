package io.github.eternalpro.controller;

import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import com.jfinal.upload.UploadFile;
import io.github.eternalpro.core.FlashMessageUtils;
import io.github.eternalpro.model.SiteInfo;
import io.github.eternalpro.service.SiteInfoService;
import org.apache.log4j.Logger;

/**
 * 站点信息有关
 * Created by gefangshuai on 2015-03-23-0023.
 */
@ControllerBind(controllerKey = "/admin/site", viewPath = "admin")
public class AdminSiteController extends Controller {
    private static Logger logger = Logger.getLogger(AdminSiteController.class);

    private SiteInfoService siteInfoService = new SiteInfoService();

    /**
     * 保存首页相关信息
     */
    public void saveHomeModule() {
        String moduleabout = getPara("moduleabout");
        String modulenews = getPara("modulenews");

        siteInfoService.saveModulenews(modulenews);
        siteInfoService.saveModuleabout(moduleabout);

        FlashMessageUtils.setSuccessMessage(this, "添加成功！");
        redirect("/admin");
    }
    /**
     * 保存品牌故事
     */
    public void saveBrand() {
        UploadFile uploadFile = getFile("brandFile");
        SiteInfo brandInfo = getModel(SiteInfo.class, "brandInfo");
        if(uploadFile != null)
            brandInfo.set("imagepath", uploadFile.getFileName());
        siteInfoService.saveBrandInfo(brandInfo);
        renderText(brandInfo.getStr("imagepath"));

    }

    /**
     * 保存加入我们
     */
    public void saveJoinus(){
        UploadFile uploadFile = getFile("joinusFile");
        SiteInfo joinusInfo = getModel(SiteInfo.class, "joinusInfo");
        if(uploadFile != null)
            joinusInfo.set("imagepath", uploadFile.getFileName());
        siteInfoService.saveJoinus(joinusInfo);
        renderText(joinusInfo.getStr("imagepath"));
    }

    /**
     * 保存加盟
     */
    public void saveAffiliate(){
        UploadFile uploadFile = getFile("affiliateFile");
        SiteInfo affiliateInfo = getModel(SiteInfo.class, "affiliateInfo");
        if(uploadFile != null)
            affiliateInfo.set("imagepath", uploadFile.getFileName());
        siteInfoService.saveAffiliate(affiliateInfo);
        renderText(affiliateInfo.getStr("imagepath"));
    }

    /**
     * 保存加盟
     */
    public void saveShop(){
        UploadFile uploadFile = getFile("shopFile");
        SiteInfo shopInfo = getModel(SiteInfo.class, "shopInfo");
        if(uploadFile != null)
            shopInfo.set("imagepath", uploadFile.getFileName());
        siteInfoService.saveShop(shopInfo);
        renderText(shopInfo.getStr("imagepath"));
    }
}