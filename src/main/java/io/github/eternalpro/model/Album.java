package io.github.eternalpro.model;

import com.jfinal.plugin.activerecord.Model;

import java.util.List;

/**
 * Created by fangshuai on 2015-03-29-0029.
 */
public class Album extends Model<Album>{
    public static final Album dao = new Album();

    public static List<Album> findTuijianY() {
        return dao.find("select * from album where ismain = 'y'");
    }
}