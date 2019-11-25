package com.zhg.javakc.modules.test.controller;

import org.apache.commons.mail.HtmlEmail;

/**
 * @author yang
 * @version v0.0.1
 * @date 2019/11/25 10:36
 */
public class QtzTask {
    public void send(){
//        System.out.println(new Date());
        //##邮件
        HtmlEmail email= new HtmlEmail();
        try {
            //##邮箱服务器名称
            email.setHostName("smtp.163.com");
            //##字符集编码
            email.setCharset("utf-8");
            //##收件人邮箱
            email.addTo("Echo-yt@163.com");
            //##发件人邮箱
            email.setFrom("Echo-yt@163.com");
            //##认证信息(用户名，密码)
            email.setAuthentication("","");
            //##发送的主题
            email.setSubject("放假通知");
            //##发送的内容
            email.setMsg("因信息采集放假4天");
            //##发送
            email.send();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        QtzTask task=new QtzTask();
        task.send();
    }
}
