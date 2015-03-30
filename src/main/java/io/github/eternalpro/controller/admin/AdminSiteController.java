package io.github.eternalpro.controller.admin;

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
        String videoPath = getPara("videoPath");

        siteInfoService.saveHomeVideo(videoPath);
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
            brandInfo.set("filepath", uploadFile.getFileName());
        siteInfoService.saveBrandInfo(brandInfo);
        renderText(brandInfo.getStr("filepath"));

    }

    /**
     * 保存加入我们
     */
    public void saveJoinus(){
        UploadFile uploadFile = getFile("joinusFile");
        SiteInfo joinusInfo = getModel(SiteInfo.class, "joinusInfo");
        if(uploadFile != null)
            joinusInfo.set("filepath", uploadFile.getFileName());
        siteInfoService.saveJoinus(joinusInfo);
        renderText(joinusInfo.getStr("filepath"));
    }

    /**
     * 保存加盟
     */
    public void saveAffiliate(){
        UploadFile uploadFile = getFile("affiliateFile");
        SiteInfo affiliateInfo = getModel(SiteInfo.class, "affiliateInfo");
        if(uploadFile != null)
            affiliateInfo.set("filepath", uploadFile.getFileName());
        siteInfoService.saveAffiliate(affiliateInfo);
        renderText(affiliateInfo.getStr("filepath"));
    }

    /**
     * 保存加盟
     */
    public void saveShop(){
        UploadFile uploadFile = getFile("shopFile");
        SiteInfo shopInfo = getModel(SiteInfo.class, "shopInfo");
        if(uploadFile != null)
            shopInfo.set("filepath", uploadFile.getFileName());
        siteInfoService.saveShop(shopInfo);
        renderText(shopInfo.getStr("filepath"));
    }

    /**
     * 保存时尚动态信息
     */
    public void saveFashion(){
        UploadFile uploadFile = getFile("fashionFile");
        SiteInfo fashionInfo = getModel(SiteInfo.class, "fashionInfo");
        if(uploadFile != null)
            fashionInfo.set("filepath", uploadFile.getFileName());
        siteInfoService.saveFashion(fashionInfo);
        renderText(fashionInfo.getStr("filepath"));
    }

    /**
     * 保存新闻资讯信息
     */
    public void saveNews(){
        UploadFile uploadFile = getFile("newsFile");
        SiteInfo newsInfo = getModel(SiteInfo.class, "newsInfo");
        if(uploadFile != null)
            newsInfo.set("filepath", uploadFile.getFileName());
        siteInfoService.saveNews(newsInfo);
        renderText(newsInfo.getStr("filepath"));
    }

    /**
     * 保存新闻资讯信息
     */
    public void saveVIP(){
        UploadFile uploadFile = getFile("vipFile");
        SiteInfo vipInfo = getModel(SiteInfo.class, "vipInfo");
        if(uploadFile != null)
            vipInfo.set("filepath", uploadFile.getFileName());
        siteInfoService.saveVIP(vipInfo);
        renderText(vipInfo.getStr("filepath"));
    }


    public void saveTmall(){
        UploadFile uploadFile = getFile("tmallFile");
        SiteInfo tmallInfo = getModel(SiteInfo.class, "tmallInfo");
        if(uploadFile != null)
            tmallInfo.set("filepath", uploadFile.getFileName());
        siteInfoService.saveTmall(tmallInfo);
        renderText(tmallInfo.getStr("filepath"));
    }


    public void saveCallus(){
        SiteInfo callusInfo = getModel(SiteInfo.class, "callusInfo");
        siteInfoService.saveCallusInfo(callusInfo);
        renderNull();
    }

    public void saveFaq(){
        SiteInfo faqInfo = getModel(SiteInfo.class, "faqInfo");
        siteInfoService.saveFaqInfo(faqInfo);
        renderNull();
    }

    /**
     * 保存新闻资讯信息
     */
    public void saveAlbum(){
        UploadFile uploadFile = getFile("albumFile");
        SiteInfo albumInfo = getModel(SiteInfo.class, "albumInfo");
        if(uploadFile != null)
            albumInfo.set("filepath", uploadFile.getFileName());
        siteInfoService.saveAlbum(albumInfo);
        FlashMessageUtils.setSuccessMessage(this, "保存成功！");
        redirect("/admin/album");
    }
}
