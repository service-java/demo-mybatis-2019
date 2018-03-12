package com.hehe.controller.common;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Api("首页管理")
@RequestMapping("/common/*")
@Controller
public class SettingsController {

    @ApiOperation("欢迎界面")
    @GetMapping("/settings")
    public String hehe(){
        return "设置";
    }

}
