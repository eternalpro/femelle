package io.github.eternalpro.controller.admin;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.upload.UploadFile;
import io.github.eternalpro.core.FlashMessageUtils;
import io.github.eternalpro.model.Image;
import io.github.eternalpro.model.Product;
import io.github.eternalpro.model.Recommend;
import io.github.eternalpro.service.ProductService;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

/**
 * Created by gefangshuai on 2015-03-22-0022.
 */
@ControllerBind(controllerKey = "/admin/product", viewPath = "admin/product")
public class AdminProductController extends Controller {
    private ProductService productService = new ProductService();

    @ActionKey("/admin/product")
    public void index() {
        int page = getParaToInt("page", 1);
        Page<Product> products = Product.dao.paginate(page, 5, "select *", "from product");
        productService.addFirstImageToProduct(products.getList());
        setAttr("types", Product.Type.values());
        productService.abstractProducts(products.getList(), 78);
        setAttr("products", products);
    }

    public void edit() {
        Integer id = getParaToInt();

        setAttr("types", Product.Type.values());

        if (id != null && id != 0) {
            setAttr("product", Product.dao.findById(id));
        }
    }

    public void save() {
        UploadFile uploadFile = getFile("productFile");
        Product product = getModel(Product.class);
        if (uploadFile != null) {
            product.set("imagepath", uploadFile.getFileName());
        }
        productService.saveProduct(product);
        FlashMessageUtils.setSuccessMessage(this, "保存成功！");
        redirect("/admin/product");
    }

    public void delete() {
        Integer id = getParaToInt();
        if (Product.findRecommend(id).size() > 0) {
            FlashMessageUtils.setWarningMessage(this, "请先将搭配移除，再进行删除操作！");
        }else{
            FlashMessageUtils.setSuccessMessage(this, "删除成功！");
            Product.dao.deleteById(id);
        }
        redirect("/admin/product/");
    }

    public void type() throws UnsupportedEncodingException {
        String type = getPara();
        int page = getParaToInt("page", 1);
        Page<Product> products = Product.dao.paginate(page, 5, "select *", "from product where type = ?", URLDecoder.decode(type, "utf-8"));
        setAttr("types", Product.Type.values());
        productService.abstractProducts(products.getList(), 78);
        setAttr("products", products);
        renderJsp("index.jsp");
    }

    public void recommend(){
        Integer id = getParaToInt();
        List<Product> products = Product.findRecommend(id);
        setAttr("products", products);
        setAttr("mainid", id);
        renderJsp("recommend.jsp");
    }

    @ActionKey("/admin/product/recommend/add")
    public void addRecommend(){
        Integer id = getParaToInt();
        List<Product> products = Product.findNotRecommend(id);
        productService.addFirstImageToProduct(products);
        setAttr("products", products);
        setAttr("mainid", id);
        renderJsp("addRecommend.jsp");
    }

    @ActionKey("/admin/product/recommend/delete")
    public void deleteRecommend(){
        Integer mainId = getParaToInt(0);
        Integer productId = getParaToInt(1);
        Db.update("delete from recommend where mainid = ? and productid = ?", mainId, productId);
        renderNull();
    }

    @ActionKey("/admin/product/recommend/save")
    public void saveRecommend(){
        Integer mainId = getParaToInt(0);
        Integer productId = getParaToInt(1);

        new Recommend().set("mainid", mainId).set("productid", productId).save();
        renderNull();
    }


    @ActionKey("/admin/product/detail/add")
    public void addDetail() {
        Integer productId = getParaToInt();
        setAttr("productId", productId);
    }

    @ActionKey("/admin/product/detail/save")
    public void saveDetail() {
        List<UploadFile> uploadFiles = getFiles();
        Integer productId = getParaToInt("productId");
        for (UploadFile uploadFile : uploadFiles) {
            new Image()
                    .set("path", uploadFile.getFileName())
                    .set("productid", productId)
                    .save();
        }
        FlashMessageUtils.setSuccessMessage(this, "保存成功！");
        redirect("/admin/product");
    }

    @ActionKey("/admin/product/detail/view")
    public void viewDetail() {
        Integer productId = getParaToInt();
        List<Image> images = Image.dao.find("select * from image where productid = ?", productId);
        setAttr("images", images);
    }

    @ActionKey("/admin/product/detail/remove")
    public void deleteDetail() {
        Integer imageId = getParaToInt();
        Image.dao.deleteById(imageId);
        renderNull();
    }


}
