package io.github.eternalpro.model;

import com.jfinal.ext.plugin.tablebind.TableBind;
import com.jfinal.plugin.activerecord.Model;

/**
 * Created by gefangshuai on 2015-03-22-0022.
 */
@TableBind(tableName = "siteinfo", pkName = "id")
public class SiteInfo extends Model<SiteInfo>{
    public static final SiteInfo dao = new SiteInfo();

    public static SiteInfo findByModule(String module) {

        return dao.findFirst("select * from siteinfo s where s.module = ?", module);
    }
}
