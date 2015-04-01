package io.github.eternalpro.controller;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import io.github.eternalpro.constant.NewsCST;
import io.github.eternalpro.model.News;
import io.github.eternalpro.model.SiteInfo;
import io.github.eternalpro.service.NewsService;

import java.util.List;

/**
 * 资讯管理
 * Created by gefangshuai on 2015/3/26.
 */
@ControllerBind(controllerKey = "/news", viewPath = "news")
public class NewsController extends Controller{
    private NewsService newsService = new NewsService();

    @ActionKey("/news")
    public void fashion() {
        SiteInfo fashionInfo = SiteInfo.findByModule(NewsCST.FASHION);
        List<News> fashions = News.dao.findMainByFlag(NewsCST.FASHION);

        newsService.abstractNews(fashions, 120);

        setAttr("fashionInfo", fashionInfo);
        setAttr("fashions", fashions);
    }

    public void news(){
        SiteInfo newsInfo = SiteInfo.findByModule(NewsCST.NEWS);
        List<News> newses = News.dao.findMainByFlag(NewsCST.NEWS);
        newsService.abstractNews(newses, 120);
        setAttr("newsInfo", newsInfo);
        setAttr("newses", newses);
    }

    public void view(){
        Integer id = getParaToInt();
        News news = News.dao.findById(id);
        setAttr("news", news);
    }
}
