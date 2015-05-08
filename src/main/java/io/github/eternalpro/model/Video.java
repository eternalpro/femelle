package io.github.eternalpro.model;

import com.jfinal.ext.plugin.tablebind.TableBind;
import com.jfinal.plugin.activerecord.Model;

/**
 * Created by gefangshuai on 2015-05-08-0008.
 */
@TableBind(tableName = "video", pkName = "id")
public class Video extends Model<Video> {
    public static final Video dao = new Video();

}
