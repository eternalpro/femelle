package io.github.eternalpro.service;

import io.github.eternalpro.model.News;
import io.github.eternalpro.utils.StrUtils;

import java.util.List;

/**
 * Created by gefangshuai on 2015/3/26.
 */
public class NewsService {

    /**
     * 将新闻中的内容转换成摘要用于前台显示。
     * @param newses
     */
    public void abstractNews(List<News> newses, int length) {
        for (News news : newses) {
            news.set("content", StrUtils.getAbstract(news.getStr("content"), length));
        }
    }

}
