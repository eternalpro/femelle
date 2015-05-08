package io.github.eternalpro.controller;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import com.jfinal.plugin.activerecord.Page;
import io.github.eternalpro.model.Album;
import io.github.eternalpro.model.Image;
import io.github.eternalpro.model.Product;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by gefangshuai on 2015/3/28.
 */
@ControllerBind(controllerKey = "/album", viewPath = "album")
public class AlbumController extends Controller {

    @ActionKey("/album")
    public void index() {
        int page = getParaToInt(0, 1);
        Page<Album> albumPage = Album.dao.paginate(page, 6, "select *", "from album order by id desc");

        Integer albumId = getParaToInt("albumId");

        if (albumId == null && albumPage != null && albumPage.getList().size() > 0) {
            albumId = albumPage.getList().get(0).get("id");
        }

        setAttr("current", albumId);
        setAttr("albumPage", albumPage);
    }


    public void loadGalleria(){
        Integer albumId = getParaToInt();
        List<Image> images = Image.dao.getImagesByAlbum(albumId);

        List<String> imagePaths = new ArrayList<>();
        for (Image image : images) {
            imagePaths.add(image.getStr("path"));
        }
        setAttr("imagePaths", imagePaths);
    }
}
