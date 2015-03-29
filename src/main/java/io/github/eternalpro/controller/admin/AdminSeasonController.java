package io.github.eternalpro.controller.admin;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import com.jfinal.upload.UploadFile;
import io.github.eternalpro.constant.NewsCST;
import io.github.eternalpro.core.FlashMessageUtils;
import io.github.eternalpro.model.News;
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
        UploadFile uploadFile = getFile("tuijianFile");
        Tuijian tuijian = getModel(Tuijian.class);
        if(uploadFile != null)
            tuijian.set("imagepath", uploadFile.getFileName());

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

    public void set(){
        String isMain = getPara(0);
        Integer id = getParaToInt(1);

        if (isMain.equals("y")) {
            List<Tuijian> tuijians = Tuijian.findTuijianY();
            if (tuijians.size() >= 4) {
                FlashMessageUtils.setWarningMessage(this, "推荐的数量已满，请先删除多余的项目！");
            }else{
                Tuijian.dao.findById(id).set("ismain", isMain).update();
                FlashMessageUtils.setSuccessMessage(this, "修改成功！");
            }
        } else{
            Tuijian.dao.findById(id).set("ismain", isMain).update();
            FlashMessageUtils.setSuccessMessage(this, "修改成功！");
        }
        redirect("/admin/season");
    }
}
