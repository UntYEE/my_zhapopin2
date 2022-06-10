package com.aistar.controller;

import com.aistar.pojo.MailBean;
import com.aistar.pojo.RespBean;
import com.aistar.pojo.User;
import com.aistar.util.MailUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;

@Controller
public class Mail {

 @Autowired
 private MailUtil mailUtil;

 @PostMapping("/mails")
 @ResponseBody
 public RespBean doMail(User user){
  System.out.println("数据: " + user);
  if (user != null){
   MailBean mailBean = new MailBean();
   mailBean.setRecipient(user.getMailbox());//接收者
   mailBean.setSubject("用户信息");//标题
   //内容主体
   mailBean.setContent("SpringBootMail发送一个简单格式的邮件，时间为：" + new Date());

   mailUtil.sendSimpleMail(mailBean);
   return RespBean.success("查询成功",user);
  }
  return RespBean.error("发送失败！");
 }

}
