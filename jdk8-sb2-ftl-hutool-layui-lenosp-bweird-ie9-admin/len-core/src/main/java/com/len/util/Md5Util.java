package com.len.util;

import cn.hutool.core.lang.Console;
import org.apache.shiro.crypto.hash.Md5Hash;

/**
 * @author zhuxiaomeng
 * @date 2017/12/7.
 * @email 154040976@qq.com
 * 采用md5加密 确保数据安全性
 */
public class Md5Util {
    public static String getMD5(String msg, String salt) {
        return new Md5Hash(msg, salt, 4).toString();
    }

    /**
     * 测试
     *
     * @param args
     */
    public static void main(String[] args) {
        String str = getMD5("123456", "tom");
        String str2 = getMD5("123456", "tom2");

        Console.log("{}\n{}", str, str2);
    }
}
