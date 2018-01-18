package com.chatRobot.tool;

import java.math.BigInteger;
import java.net.URLDecoder;

/**
 * Created by Cookbooks on 2018/1/12.
 */
public class RSA {
    public static String getKeyMap(String secret) throws Exception {
        String result ;
        byte[] en_result = new BigInteger(secret,16).toByteArray();
        byte[] de_result = RSAUtil.decrypt(RSAUtil.getKeyPair().getPrivate(),en_result);
        StringBuffer sb = new StringBuffer();
        sb.append(new String(de_result));
        result = sb.reverse().toString();
        result = result.replaceAll("%(?![0-9a-fA-F]{2})", "%25");
        result = URLDecoder.decode(result,"UTF-8");
        return result;
    }
}
