package io.github.eternalpro.model;

import com.jfinal.ext.plugin.tablebind.TableBind;
import com.jfinal.plugin.activerecord.Model;

/**
 * Created by gefangshuai on 2015/3/28.
 */
@TableBind(tableName = "recommend", pkName = "id")
public class Recommend extends Model<Recommend> {
    public static final Recommend dao = new Recommend();
}
