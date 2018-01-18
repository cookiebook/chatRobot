package com.chatRobot.controller;

import com.chatRobot.model.User_p;
import com.chatRobot.service.IUserService_p;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
@Controller
@RequestMapping("/user")
public class UserController_p {

    @Resource(name="IUserService")
    private IUserService_p userService;

//    @RequestMapping("/showUser")
//    public @ResponseBody User_p selectUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        request.setCharacterEncoding("UTF-8");
//        response.setCharacterEncoding("UTF-8");
//        int userId = Integer.parseInt(request.getParameter("id"));
//        return this.userService.selectByPrimaryKey(userId);
//    }

    @RequestMapping("/requestJson")
    public @ResponseBody
    List<User_p> requestJson(@RequestBody User_p user) {
//        @RequestBody
//        String p="hhh";
//        System.out.println("json传来的串是:" + p);
//        System.out.println("json传来的串是:" + p.getId());
//        p.setPassword("123456");


//        int userId =user.getId();
//        System.out.println("json传来的串是:" + userId);
//        System.out.print(userId);
//        return  this.userService.selectByPrimaryKey(userId);

        String password;
        password=user.getPassword();
        System.out.print(password);
        return this.userService.selectbypassword(password);
    }


    @RequestMapping("/requestJson_p")
    public @ResponseBody
    String requestJson() {
        List<User_p> users=new ArrayList<User_p>();
        System.out.print("hhh");
        for(int i=0;i<2;i++)
        {
            User_p tmp=new User_p();
            tmp.setName("zcz"+i);
            tmp.setPassword("123456");
//              tmp.setId("4");
            users.add(tmp);
        }
        try{
            userService.insertUser( users);
            return "true";
        }

        catch (RuntimeException e)
        {
            return "false";
        }
    }



//    @RequestMapping(value = "views/myProductPage", method = RequestMethod.GET)//get
//    public ModelAndView showMyProduct(HttpServletRequest request) {
//        // 取得SESSION中的loginUser
////        User_p loginUser = (User_p) request.getSession().getAttribute("loginUser");
////        // 判断SESSION是否失效
////        if (loginUser == null || "".equals(loginUser)) {
////            return "redirect:/";
////        }
//        ModelAndView model=  new ModelAndView("/page");
//        String loginUserId = "123456";
//        //此处的productService是注入的IProductService接口的对象
//        this.userService.showProductsByPage(request, model, loginUserId);
//        return model;
//    }
//    Map<String, byte[]> keyMap = generateKeyBytes();
//    @RequestMapping("/produceRas")
//    public @ResponseBody
//    PublicKey produceRas() {
//        System.out.print("呵呵呵呵");
//        PublicKey publicKey = restorePublicKey(keyMap.get(PUBLIC_KEY));
//        publicKey.getAlgorithm();
//        return publicKey;
//    }

//    @RequestMapping("views/getKeyMap")
//    public @ResponseBody User_p getKeyMap(HttpServletRequest request) throws Exception {
//        String result ;
//        String secret = request.getParameter("result");
//        byte[] en_result = new BigInteger(secret,16).toByteArray();
//        byte[] de_result = RSAUtil.decrypt(RSAUtil.getKeyPair().getPrivate(),en_result);
//        StringBuffer sb = new StringBuffer();
//        sb.append(new String(de_result));
//        result = sb.reverse().toString();
//        result = result.replaceAll("%(?![0-9a-fA-F]{2})", "%25");
//        result = URLDecoder.decode(result,"UTF-8");
//        JSONObject jsonObject=JSONObject.fromObject(result);
//        User_p stu=(User_p)JSONObject.toBean(jsonObject, User_p.class);
//        return stu;
//    }




//    @RequestMapping(value = "views/postKeyMap" , method = RequestMethod.POST)
//    public @ResponseBody User_p postKeyMap(@RequestBody User_p secret) throws Exception {
//        String pwd ;
//        byte[] en_result = new BigInteger(secret.getPassword(),16).toByteArray();
//        byte[] de_result = RSAUtil.decrypt(RSAUtil.getKeyPair().getPrivate(),en_result);
//        StringBuffer sb = new StringBuffer();
//        sb.append(new String(de_result));
//        pwd = sb.reverse().toString();
//        pwd = pwd.replaceAll("%(?![0-9a-fA-F]{2})", "%25");
//        pwd = URLDecoder.decode(pwd,"UTF-8");
//        secret.setPassword(pwd);
////        JSONObject jsonObject=JSONObject.fromObject(fact);
////        User_p stu=(User_p)JSONObject.toBean(jsonObject, User_p.class);
//        return secret;
//    }






}
