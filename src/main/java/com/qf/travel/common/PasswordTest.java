package com.qf.travel.common;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;

/**
 * @Author chenzetao
 * @Date 2019/9/5
 */
public class PasswordTest {
    public static void main(String[] args) {
        // 1.加密算法
        String algorithmName = "MD5";
        // 2.密码
        Object source = "123456";
        // 3.盐值
        Object salt = ByteSource.Util.bytes("libai"); // 盐值一般是用户名或者userId
        // 4.加密次数
        int hashIterations = 1024;
        SimpleHash simpleHash = new SimpleHash(algorithmName, source, salt, hashIterations);
        // 5.得到加密后的密码
        System.out.println(simpleHash);
    }

    //生成MD5密文的方法
    public static String creatMD5(String username,String password){//用户名，密码
        // 1.加密算法
        String algorithmName = "MD5";
        // 2.盐值
        Object salt = ByteSource.Util.bytes(username); // 盐值一般是用户名或者userId
        // 4加密次数
        int hashIterations = 1024;
        //加密算法，密码，盐值，加密次数
        SimpleHash simpleHash = new SimpleHash(algorithmName, password, salt, hashIterations);
        // 5.返回得到加密后的密码
        return String.valueOf(simpleHash);
    }

}
