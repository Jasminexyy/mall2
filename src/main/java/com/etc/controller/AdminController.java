package com.etc.controller;

import com.etc.model.entity.Goods;
import com.etc.model.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
@SessionAttributes({"uid"})
@RequestMapping("/")
public class AdminController {

    @Autowired
    private AdminService adminService;

    @RequestMapping("admin")
    public String getGoods(Model model){
        model.addAttribute("list",adminService.findAll());
        return "admin";
    }

    @RequestMapping("removegood")
    public String removeGood(int gid){
        adminService.removeGood(gid);
        return "forward:/admin.html";
    }

    @RequestMapping("addgoods")
    public String addgoods(){
        return "addgoods";
    }

    @RequestMapping("doadd")
    public String doAdd(Goods goods,MultipartHttpServletRequest request) throws IOException {
        System.out.println("hi");
        System.out.println(goods);
        //获取物理路径webContext所在路径
        String pathRoot = request.getSession().getServletContext().getRealPath("");
        String path="";
        String realPath="";
        int index=1;
        for(MultipartFile mf : request.getFiles("file")) {
            if(!mf.isEmpty()) {
               /* //生成唯一编码uuid作为文件名称
                System.out.println(1);
                String uuid = UUID.randomUUID().toString().replaceAll("-", "");
                //获取文件类型（可以判断如果不是图片，禁止上传）
                System.out.println(uuid);
                String contentType = mf.getContentType();
                System.out.println(contentType);
                //获取文件后缀名
                String imageName = contentType.substring(contentType.indexOf("/")+1);
                //数据库存储一个相对路径，便于后续在界面中展现
                System.out.println(imageName);
                path =uuid+"."+imageName;
                //文件上传需要一个物理路径
                System.out.println(path);
                realPath = pathRoot+path;
                System.out.println(realPath);
                //根据物理路径将文件上传至服务器
                mf.transferTo(new File(realPath));
                System.out.println(1);
                goods.setGpicture(path);
                System.out.println(goods);*/
               path=goods.getGname()+".jpg";
               goods.setGpicture(path);
            }
        }
        adminService.addGood(goods);
        System.out.println("finish");
        return "forward:/admin.html";
    }
}
