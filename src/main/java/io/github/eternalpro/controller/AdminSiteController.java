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
        UploadFile uploadFile = getFile("file");
        SiteInfo brandInfo = getModel(SiteInfo.class);
        brandInfo.set("imagepath", uploadFile.getFileName());
        siteInfoService.saveBrandInfo(brandInfo);
        renderText("保存成功！");

    }
}
