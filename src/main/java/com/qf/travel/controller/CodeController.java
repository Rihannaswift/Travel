package com.qf.travel.controller;

import com.google.code.kaptcha.Producer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.IOException;

@Controller
@RequestMapping("Vcode")
public class CodeController {

    @Autowired
    private Producer captchaProducer;

    //生成验证码的方法
    @RequestMapping("code")
    public void code(HttpSession session, HttpServletResponse response) throws IOException {
        String text = captchaProducer.createText();
        System.err.println("系统生成的验证码是:"+text);
        BufferedImage image = captchaProducer.createImage(text);
        session.setAttribute("kaptcha",text);//存进session
        ImageIO.write(image, "jpg", response.getOutputStream());
    }
}
