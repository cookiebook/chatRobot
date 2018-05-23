package com.chatRobot.tool;

import com.chatRobot.model.Log;

import java.io.*;
import java.util.List;

/**
 * Created by Cookbooks on 2018/5/19.
 */
public class FileStream {
//        public static void main(String[] args) throws Exception {
////            //字节流
////            byteOutStream();,List<Log> list
////            //字符流 (输出流中含有中文时使用字符流)
//            charOutStream("tiantian");
//        }
        public static void charOutStream(String filename,List<Log> list) throws Exception{
            // 1：利用File类找到要操作的对象
            File file = new File(filename);
            if(!file.getParentFile().exists()){
                file.getParentFile().mkdirs();
            }
            //2：准备输出流
            Writer out = new FileWriter(file);
            for(int i=0;i<list.size();i++)
            out.write(list.get(i).toString()+"\r\n");
            out.close();
        }

        public static void byteOutStream(String filename,List<Log> list) throws Exception {
            //1:使用File类创建一个要操作的文件路径
            File file = new File("F:" + File.separator + "log" + File.separator + "filename.txt");
            if (!file.getParentFile().exists()) { //如果文件的目录不存在
                file.getParentFile().mkdirs(); //创建目录
            }
            OutputStream output = new FileOutputStream(file);
                //2: 实例化OutputString 对象
            try {
                //3: 准备好实现内容的输出
                String msg = "HelloWorld";
                //将字符串变为字节数组
                byte data[] = msg.getBytes();
                output.write(data);
            }
            //4: 资源操作的最后必须关闭
           finally{
                output.close();
            }
            }
        }


