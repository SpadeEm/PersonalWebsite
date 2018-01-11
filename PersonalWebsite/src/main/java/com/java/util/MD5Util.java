package com.java.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Util {
	public static final String MD5="MD5";

    /**
     * 采用加密算法加密字符串数据
     * @param str   需要加密的数据
     * @param algorithm 采用的加密算法
     * @return 字节数据
     */
    public static byte[] EncryptionStrBytes(String str) {
        // 加密之后所得字节数组
        byte[] bytes = null;
        try {
            // 获取MD5算法实例 得到一个md5的消息摘要
            MessageDigest md = MessageDigest.getInstance("MD5");
            //添加要进行计算摘要的信息
            md.update(str.getBytes());
            //得到该摘要
            bytes = md.digest();
        } catch (NoSuchAlgorithmException e) {
            System.out.println("加密算法: "+ "MD5" +" 不存在: ");
        }
        return null==bytes?null:bytes;
    }



    /**
     * 把字节数组转化成字符串返回
     * @param bytes
     * @return
     */
    public static String BytesConvertToHexString(byte [] bytes) {
        StringBuffer sb = new StringBuffer();
        for (byte aByte : bytes) {
          String s=Integer.toHexString(0xff & aByte);
            if(s.length()==1){
                sb.append("0"+s);
            }else{
                sb.append(s);
            }
        }
        return sb.toString();
    }

    /**
     * 采用加密算法加密字符串数据
     * @param str   需要加密的数据
     * @param algorithm 采用的加密算法
     * @return 字节数据
     */
    public static String EncryptionStr(String str) {
        // 加密之后所得字节数组
        byte[] bytes = EncryptionStrBytes(str);
        return BytesConvertToHexString(bytes);
    }
    //测试上述方法
    public static void main(String[] args) {
        String test1="下载";
        String test2="QWERFVDSCX";
        String test3="23423KJHkdfg";
        String [] test={test1,test2,test3};
        
        String str=EncryptionStr(test1);
        System.out.println("数据：" + test1+" 加密之后的结果为："+str+" 字符串长度为："+str.length());
       
    }
}
