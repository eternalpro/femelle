package io.github.eternalpro.controller.admin;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import com.jfinal.upload.UploadFile;
import io.github.eternalpro.core.FlashMessageUtils;
import io.github.eternalpro.model.Album;
import io.github.eternalpro.model.Image;

import java.util.List;

/**
 * Created by fangshuai on 2015-03-29-0029.
 */
@ControllerBind(controllerKey = "/admin/album", viewPath = "admin/album")
public class AdminAlbumController extends Controller {

    @ActionKey("/admin/album")
    public void index() {
        List<Album> albums = Album.dao.find("select * from album");
        setAttr("albums", albums);
    }

    public void edit() {
        Integer id = getParaToInt(1);
        if (id != null && id != 0) {
            setAttr("album", Album.dao.findById(id));
        }
    }

    public void save() {
        UploadFile uploadFile = getFile("albumFile");
        Album album = getModel(Album.class);
        if (uploadFile != null)
            album.set("imagepath", uploadFile.getFileName());

        if (album.get("id") == null) {
            album.save();
            FlashMessageUtils.setSuccessMessage(this, "添加成功！");
        } else {
            album.update();
            FlashMessageUtils.setSuccessMessage(this, "修改成功！");
        }

        redirect("/admin/album");
    }

    public void delete(){
        Integer id = getParaToInt();
        Album.dao.deleteById(id);
        FlashMessageUtils.setSuccessMessage(this, "删除成功！");
        redirect("/admin/album");
    }

    public void addItem(){
        Integer id = getParaToInt();
        setAttr("albumId", id);
    }

    public void saveItem() {
        List<UploadFile> uploadFiles = getFiles();
        Integer albumId = getParaToInt("albumId");
        for (UploadFile uploadFile : uploadFiles) {
            new Image()
                    .set("path", uploadFile.getFileName())
                    .set("albumid", albumId)
                    .save();
        }
        FlashMessageUtils.setSuccessMessage(this, "保存成功！");
        redirect("/admin/album");
    }

    public void viewItem() {
        Integer albumId = getParaToInt();
        List<Image> images = Image.dao.find("select * from image where albumid = ?", albumId);
        setAttr("images", images);
    }

    public void deleteItem() {
        Integer imageId = getParaToInt();
        Image.dao.deleteById(imageId);
        renderNull();
    }

}
