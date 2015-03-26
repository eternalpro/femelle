package io.github.eternalpro.model;

import com.jfinal.plugin.activerecord.Model;

import java.util.List;

/**
 * 新闻资讯
 * Created by gefangshuai on 2015/3/25.
 */
public class News extends Model<News> {
    public static final News dao = new News();

    public List<News> findMainByFlag(String fashion) {
        return dao.find("select * from news where flag = ? and isMain = 'y' ", fashion);
    }

    public News findByIdAndFlag(Integer id, String flag) {
        return dao.findFirst("select * from news where id = ? and flag = ?", id, flag);
    }
}
