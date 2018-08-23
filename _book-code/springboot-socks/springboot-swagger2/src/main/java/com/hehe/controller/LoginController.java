package com.hehe.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Description:
 * User: luo0412 1095847440@qq.com
 * Date: 2018-03-12
 * Time: 12:29
 */
@Api("登录")
@Controller
public class LoginController {

    @ApiOperation("首页")
    @GetMapping("/")
    @ResponseBody
    public String index() {
        return "欢迎登录";
    }
}
