package com.hehe.controller.admin;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Api("管理员")
@RequestMapping("/admin/*")
@Controller
public class SettingsController {

    @ApiOperation("欢迎界面")
    @GetMapping("/sasd")
    public String hehe(){
        return "redirect:/swagger-ui.html";
    }

}
