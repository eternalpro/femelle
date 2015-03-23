package io.github.eternalpro.model;

import com.jfinal.plugin.activerecord.Model;

/**
 * Created by gefangshuai on 2015-03-22-0022.
 */
public class SiteInfo extends Model<SiteInfo>{
    public static final SiteInfo dao = new SiteInfo();

    public static SiteInfo findByModule(String module) {

        return dao.findFirst("select * from siteinfo s where s.module = ?", module);
    }
}
