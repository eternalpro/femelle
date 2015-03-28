package io.github.eternalpro.controller.admin;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import com.jfinal.upload.UploadFile;
import io.github.eternalpro.core.FlashMessageUtils;
import io.github.eternalpro.model.Image;
import io.github.eternalpro.model.Product;
import io.github.eternalpro.model.Shop;
import io.github.eternalpro.service.ProductService;

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
        List<Product> products = Product.dao.find("select * from product");
        setAttr("types", Product.Type.values());

        productService.abstractProducts(products, 78);

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

    public void type(){
        String type = getPara();
        List<Product> products = Product.dao.find("select * from product where type = ?" , URLDecoder.decode(type));
        setAttr("types", Product.Type.values());
        productService.abstractProducts(products, 78);
        setAttr("products", products);
        renderJsp("index.jsp");
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
    public void deleteDetail(){
        Integer imageId = getParaToInt();
        Image.dao.deleteById(imageId);
        renderNull();
    }
}
