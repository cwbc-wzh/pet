/*
 * 文件名：ValidateXml.java
 * 版权：Copyright 2006-2013 Huawei Tech. Co. Ltd. All Rights Reserved. 
 * 描述： ValidateXml.java
 * 修改人：yWX5315876
 * 修改时间：2013-9-24
 * 修改内容：修改
 */
package com.lq.util;

import org.dom4j.Document;
import org.dom4j.DocumentHelper;

import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 字符串处理公共类
 * 
 */
public class StringUtils
{

    /**
     * @param oldChar 需要被替换的字符串
     * @param newChar 替换的字符串
     * @param isCaseSensitive 是否区分大小写
     * @return String 替换后的字符串
     */
    public static String replaceAll(String sourceStr, String oldChar,
                                    String newChar, boolean isCaseSensitive)
    {
        String result = "";
        if (isCaseSensitive)
        {
            Matcher m = Pattern.compile(oldChar, Pattern.CANON_EQ).matcher(
                    sourceStr);
            result = m.replaceAll(newChar);
        }
        else
        {
            Matcher m = Pattern.compile(oldChar, Pattern.CASE_INSENSITIVE)
                    .matcher(sourceStr);
            result = m.replaceAll(newChar);
        }
        return result;
    }

    /**
     * 截取字符串空格
     * 
     * @param obj
     * @return
     * @see [类、类#方法、类#成员]
     */
    public static String trim(Object obj)
    {
        if (null == obj){
            return "";
        }
        return obj.toString().trim();
    }

    /** 判断对象是否为空 */
    public static boolean isEmptyObj(Object obj)
    {
        if (null == obj)
        {
            return true;
        }
        return false;
    }

    /**
     * 空字符串判断
     * 
     * @param str
     * @return
     * @see [类、类#方法、类#成员]
     */
    public static boolean isEmpty(String str)
    {
        return ((null == str) || ("".equals(str.trim())));
    }

    /**
     * 字符串非空判断
     * 
     * @param str
     * @return
     * @see [类、类#方法、类#成员]
     */
    public static boolean isNotEmpty(String str)
    {
        return (!(isEmpty(str)));
    }

    /**
     * subString是否在sourceString中包含
     * 
     * @param sourceString
     * @param subString
     * @return
     * @see [类、类#方法、类#成员]
     */
    public static boolean isIn(String sourceString, String subString)
    {
        boolean isIn = false;
        if (isEmpty(sourceString) || isEmpty(subString))
        {
            return isIn;
        }

        String[] stringArr = sourceString.split(",");
        for (String str : stringArr)
        {
            if (subString.equals(str))
            {
                isIn = true;
                break;
            }
        }

        return isIn;
    }

    /**
     * 判断是否为手机号码或电话号码
     * 
     * @param str
     * @return
     */
    public static boolean isPhoneOrTel(String str)
    {
        if (null == str || "".equals(str))
        {
            return false;
        }
        String phoneNum = "^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$";
        String telNumber = "^0\\d{2}-\\d{8}|^0\\d{3}-\\d{7,8}";
        if (str.matches(phoneNum) || str.matches(telNumber))
        {
            return true;
        }
        return false;
    }

    /**
     * 判断是否是数字。
     * 
     * @param str
     * @return
     */
    public static boolean isNum(String str)
    {
        if (null == str || "".equals(str))
        {
            return false;
        }
        String regex = "^[0-9]*$";
        if (str.matches(regex))
        {
            return true;
        }
        return false;
    }

    /**
     * 判断是否为中文
     */
    public static boolean isChinese(String str)
    {

        if (null == str || "".equals(str))
        {
            return false;
        }
        String regex = "^[\u4e00-\u9fa5_a-zA-Z]{0,}$";
        if (str.matches(regex))
        {
            return true;
        }
        return false;

    }

    /**
     * 判断日期是否合法(年月日时分秒)
     */
    public static boolean isDate(String str)
    {
        if (null == str || "".equals(str))
        {
            return false;
        }

        String date = str.substring(0, 8);// 年月日
        String time = str.substring(8);// 时分秒
        if (isTime(time) && isLegalDate(date))
        {
            return true;
        }
        return false;
    }

    /**
     * 时分秒校验
     */
    public static boolean isTime(String str)
    {
        if (null == str || "".equals(str))
        {
            return false;
        }

        String regex = "^((0|1)[0-9]|2[0-3])([0-5][0-9])([0-5][0-9])$";
        if (!str.matches(regex))
        {
            return false;
        }
        return true;
    }

    /**
     * 年月日校验
     */
    public static boolean isLegalDate(String str)
    {
        if (null == str || "".equals(str) || str.trim().length() != 8)
        {
            return false;
        }

        int year = Integer.parseInt(str.substring(0, 4));
        if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0)
        {
            String regex = "^[0-9]{4}((0[13578]|(10|12))(([0-2][0-9])|3[0-1])|((0[469]||11)([0-2][0-9]|3[0]))|[0]2(0[1-9]|[1-2][0-9]))$";
            if (!str.matches(regex))
            {
                return false;
            }
        }
        else
        {

            String regex = "^[0-9]{4}((0[13578]|(10|12))(([0-2][0-9])|3[0-1])|((0[469]||11)([0-2][0-9]|3[0]))|[0]2(0[1-9]|1[0-9]|2[0-8]))$";
            if (!str.matches(regex))
            {
                return false;
            }
        }

        return true;
    }

    /**
     * 格式化xml文件成document
     */
    public Document parseStringToDoc(String xmlContent)
    {
        Document doc = null;
        try
        {
            doc = DocumentHelper.parseText(xmlContent);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return doc;
    }

    /**
     * 判断是够为null，为null时设置为空字符串
     */
    public static String isNull(String content)
    {
        if (content == null)
        {
            return "";
        }
        return content;
    }

    /** 转字符串到文档 */
    public static Document parseStrToDocument(String xml)
    {
        Document doc = null;
        try
        {
            doc = DocumentHelper.parseText(xml);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return doc;
    }
    
    /**
     * 判断是否为中文或数字
     */
    public static boolean isChineseOrNum(String str)
    {

        if (null == str || "".equals(str))
        {
            return false;
        }
        String regex = "^[\u4e00-\u9fa5_a-zA-Z0-9]{0,}$";
        if (str.matches(regex))
        {
            return true;
        }
        return false;

    }
    
    /**
     * 半角英文或字母
     */
    public static boolean isEnglishOrNum(String input)
    {
        String check = "^[a-zA-Z0-9()()]*$";
        Pattern pattern = Pattern.compile(check);
        Matcher matcher = pattern.matcher(input);
        if (matcher.matches())
        {
            return true;
        }

        return false;
    }
    /**
     * 判断两个字符串是否相等
     */
    public static boolean isEq(String str, String other)
    {
        if (str == null)
        {
            return other == null;
        }
        return str.equals(other);
    }
    /**
     * 获取指定字符串出现的次数
     *
     * @param srcText 源字符串
     * @param findText 要查找的字符串
     * @return
     */
    public static int appearNumber(String srcText, String findText) {
        if(isEmpty(srcText)||isEmpty(findText)){
            return 0;
        }
        int count = 0;
        Pattern p = Pattern.compile(findText);
        Matcher m = p.matcher(srcText);
        while (m.find()) {
            count++;
        }
        return count;
    }

    /**
     * 判断是否为手机号码
     *
     * @param str
     * @return
     */
    public static boolean isPhone(String str)
    {
        if (null == str || "".equals(str))
        {
            return false;
        }
        String phoneNum = "^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$";
        if (str.matches(phoneNum) )
        {
            return true;
        }
        return false;
    }
    /**
     *  获取UUID
     * @return  UUID
     */
    public static String getUUID(){
        return UUID.randomUUID().toString().replace("-","");
    }

}
