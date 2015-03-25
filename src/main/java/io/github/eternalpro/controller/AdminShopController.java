package io.github.eternalpro.controller;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import io.github.eternalpro.core.FlashMessageUtils;
import io.github.eternalpro.model.Shop;

/**
 *
 * 门店管理
 * Created by gefangshuai on 2015/3/25.
 */
@ControllerBind(controllerKey = "/admin/shop", viewPath = "admin/shop")
public class AdminShopController extends Controller{

    @ActionKey("/admin/shop")
    public void index() {
        setAttr("shops", Shop.dao.find("select * from shop"));
    }

    public void edit(){
        Integer id = getParaToInt();
        if (id != null && id != 0) {
            setAttr("shop", Shop.dao.findById(id));
        }
    }

    public void save() {
        Shop shop = getModel(Shop.class);
        if (shop.get("id") == null) {
            shop.save();
            FlashMessageUtils.setSuccessMessage(this, "添加成功！");
        }else{
            shop.update();
            FlashMessageUtils.setSuccessMessage(this, "修改成功！");
        }

        redirect("/admin/shop");
    }

    public void delete() {

        Shop.dao.deleteById(getParaToInt());
        FlashMessageUtils.setSuccessMessage(this, "删除成功！");
        redirect("/admin/shop");
    }

}
