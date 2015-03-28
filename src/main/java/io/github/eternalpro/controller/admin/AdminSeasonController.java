package io.github.eternalpro.controller.admin;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import io.github.eternalpro.core.FlashMessageUtils;
import io.github.eternalpro.model.Product;
import io.github.eternalpro.model.Tuijian;

import java.util.List;

/**
 * 当季推荐
 * Created by gefangshuai on 2015/3/28.
 */
@ControllerBind(controllerKey = "/admin/season", viewPath = "admin/season")
public class AdminSeasonController extends Controller{

    @ActionKey("/admin/season")
    public void index() {
        List<Tuijian> tuijians = Tuijian.dao.find("select * from tuijian");
        setAttr("tuijians", tuijians);
    }

    public void edit(){
        Integer id = getParaToInt();

        if (id != null && id != 0) {
            setAttr("tuijian", Tuijian.dao.findById(id));
        }
    }

    public void save() {
        Tuijian tuijian = getModel(Tuijian.class);
        if (tuijian.get("id") != null) {
            tuijian.update();
        }else{
            tuijian.save();
        }
        FlashMessageUtils.setSuccessMessage(this, "保存成功！");
        redirect("/admin/season");
    }

    public void delete() {
        Integer id = getParaToInt();
        if (Product.findTuijianProduct(id).size() > 0) {
            FlashMessageUtils.setWarningMessage(this, "请先将推荐的产品移除，再进行删除操作！");
        }else{
            FlashMessageUtils.setSuccessMessage(this, "删除成功！");
            Tuijian.dao.deleteById(id);
        }
        redirect("/admin/season/");
    }

    public void addProduct(){
        Integer id = getParaToInt();
        List<Product> products = Product.findNoTuijianProduct(id);
        setAttr("products", products);
        setAttr("tuijianId", id);
    }

    public void saveProduct() {
        Integer tuijianId = getParaToInt(0);
        Integer productId = getParaToInt(1);
        Product.dao.findById(productId).set("tuijianid", tuijianId).update();
        renderNull();
    }

    public void viewProduct(){
        Integer id = getParaToInt();
        List<Product> products = Product.findTuijianProduct(id);
        setAttr("products", products);
    }

    public void removeProduct(){
        Integer productId = getParaToInt();
        Product.dao.findById(productId).set("tuijianid", null).update();
        renderNull();
    }
}
