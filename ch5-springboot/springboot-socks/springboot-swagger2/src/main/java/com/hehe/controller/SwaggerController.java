package com.hehe.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Api("首页管理")
@Controller
public class SwaggerController {

    @ApiOperation("欢迎界面")
    @GetMapping("/api")
    public String hehe() {
        return "redirect:/swagger-ui.html";
    }
}
