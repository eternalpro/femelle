package io.github.eternalpro.controller.admin;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import com.jfinal.upload.UploadFile;
import io.github.eternalpro.constant.NewsCST;
import io.github.eternalpro.core.FlashMessageUtils;
import io.github.eternalpro.model.News;
import io.github.eternalpro.model.Shop;
import io.github.eternalpro.model.SiteInfo;
import io.github.eternalpro.service.NewsService;
import io.github.eternalpro.service.SiteInfoService;
import net.wincn.utils.StrUtils;

import java.util.List;

/**
 * Created by gefangshuai on 2015-03-22-0022.
 */
@ControllerBind(controllerKey = "/admin/news", viewPath = "admin/news")
public class AdminNewsController extends Controller{
    private NewsService newsService = new NewsService();
    private SiteInfoService siteInfoService = new SiteInfoService();

    @ActionKey("/admin/news")
    public void index() {
        List<News> newses = News.dao.find("select * from news where flag = ?", NewsCST.NEWS);
        List<News> fashions = News.dao.find("select * from news where flag = ?", NewsCST.FASHION);

        newsService.abstractNews(newses, 80);
        newsService.abstractNews(fashions, 80);

        SiteInfo newsInfo = SiteInfo.findByModule(NewsCST.NEWS);
        SiteInfo fashionInfo = SiteInfo.findByModule(NewsCST.FASHION);

        setAttr("newsInfo", newsInfo);
        setAttr("fashionInfo", fashionInfo);

        setAttr("newses", newses);
        setAttr("fashions", fashions);
    }

    public void edit() {
        String newsType = getPara(0);
        Integer id = getParaToInt(1);
        if (id != null && id != 0) {
            setAttr("news", News.dao.findById(id));
        }
        setAttr("newsType", newsType);
    }

    public void save(){
        UploadFile uploadFile = getFile("newsFile");
        News news = getModel(News.class);
        if(uploadFile != null)
            news.set("imagepath", uploadFile.getFileName());

        news.set("flag", getPara("newsType"));
        if (news.get("id") == null) {
            news.save();
            FlashMessageUtils.setSuccessMessage(this, "添加成功！");
        }else{
            news.update();
            FlashMessageUtils.setSuccessMessage(this, "修改成功！");
        }
        if(news.getStr("flag").endsWith(NewsCST.NEWS)){
            redirect("/admin/news?#tab_1");
        }else{
            redirect("/admin/news");
        }
    }

    public void delete() {
        News.dao.deleteById(getParaToInt(1));
        FlashMessageUtils.setSuccessMessage(this, "删除成功！");
        if(getPara(0).endsWith(NewsCST.NEWS)){
            redirect("/admin/news?#tab_1");
        }else{
            redirect("/admin/news");
        }
    }

    public void set(){
        String type = getPara(0);
        String isMain = getPara(1);
        Integer id = getParaToInt(2);

        News.dao.findByIdAndFlag(id, type).set("ismain", isMain).update();

        FlashMessageUtils.setSuccessMessage(this, "修改成功！");

        if(type.endsWith(NewsCST.NEWS)){
            redirect("/admin/news?#tab_1");
        }else{
            redirect("/admin/news");
        }
    }
}
