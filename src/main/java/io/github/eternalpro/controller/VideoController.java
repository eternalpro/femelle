package io.github.eternalpro.controller;

import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import io.github.eternalpro.model.Video;

import java.util.List;

/**
 * Created by gefangshuai on 2015-05-08-0008.
 */
@ControllerBind(controllerKey = "/video", viewPath = "news")
public class VideoController extends Controller{
    @ActionKey("/video")
    public void index() {
        Integer id = getParaToInt();

        List<Video> videos = Video.dao.find("select * from video order by id desc");
        setAttr("videos", videos);

        if (id == null || id==0){
            if (videos != null && videos.size() > 0) {
                setAttr("video", videos.get(0));
            }
        }else {
            Video video = Video.dao.findById(id);
            setAttr("video", video);
        }
        renderJsp("video.jsp");
    }
}
