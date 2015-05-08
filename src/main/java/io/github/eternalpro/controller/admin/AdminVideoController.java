package io.github.eternalpro.controller.admin;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import com.jfinal.upload.UploadFile;
import io.github.eternalpro.core.FlashMessageUtils;
import io.github.eternalpro.model.Album;
import io.github.eternalpro.model.Video;

/**
 * Created by gefangshuai on 2015-05-08-0008.
 */
@ControllerBind(controllerKey = "/admin/video", viewPath = "admin/video")
public class AdminVideoController extends Controller{

    @ActionKey("/admin/video")
    public void index(){
        setAttr("videos", Video.dao.find("select * from video order by id desc"));
    }

    public void edit(){
        Integer id = getParaToInt();
        if (id != null && id != 0) {
            setAttr("video", Video.dao.findById(id));
        }
    }

    public void show(){
        Integer id = getParaToInt();
        if (id != null && id != 0) {
            setAttr("video", Video.dao.findById(id));
        }
    }


    public void save() {
        UploadFile uploadFile = getFile("imageFile");
        Video video = getModel(Video.class);
        if (uploadFile != null)
            video.set("imagepath", uploadFile.getFileName());

        if (video.get("id") == null) {
            video.save();
            FlashMessageUtils.setSuccessMessage(this, "添加成功！");
        }else{
            video.update();
            FlashMessageUtils.setSuccessMessage(this, "修改成功！");
        }

        redirect("/admin/video");
    }

    public void delete() {

        Video.dao.deleteById(getParaToInt());
        FlashMessageUtils.setSuccessMessage(this, "删除成功！");
        redirect("/admin/video");
    }

}
