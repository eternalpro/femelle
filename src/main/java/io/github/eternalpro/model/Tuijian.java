package io.github.eternalpro.model;

import com.jfinal.plugin.activerecord.Model;

import java.util.List;

/**
 * Created by gefangshuai on 2015/3/28.
 */
public class Tuijian extends Model<Tuijian> {
    public static final Tuijian dao = new Tuijian();

    public static List<Tuijian> findTuijianY() {
        return dao.find("select * from tuijian where ismain = 'y'");
    }

    public static List<Tuijian> findTuijianN() {
        return dao.find("select * from tuijian where ismain <> 'y'");
    }
}