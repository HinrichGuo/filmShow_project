﻿package cn.com.filmshow.utlis;

import java.math.BigDecimal;


/**  
 * 与小数位精度(四舍五入等)相关的一些常用工具方法.  
 *   
 * float/double的精度取值方式分为以下几种: <br>  
 * java.math.BigDecimal.ROUND_UP <br>  
 * java.math.BigDecimal.ROUND_DOWN <br>  
 * java.math.BigDecimal.ROUND_CEILING <br>  
 * java.math.BigDecimal.ROUND_FLOOR <br>  
 * java.math.BigDecimal.ROUND_HALF_UP<br>  
 * java.math.BigDecimal.ROUND_HALF_DOWN <br>  
 * java.math.BigDecimal.ROUND_HALF_EVEN <br>  
 *   
 * @author stephen  
 * @version 1.0.0  
 */  

public final class RoundTool {
    /**  
     * 对double数据进行取精度.  
     * <p>  
     * For example: <br>  
     * double value = 100.345678; <br>  
     * double ret = round(value,4,BigDecimal.ROUND_HALF_UP); <br>  
     * ret为100.3457 <br>  
     *   
     * @param value  
     *            double数据.  
     * @param scale  
     *            精度位数(保留的小数位数).  
     * @param roundingMode  
     *            精度取值方式.  
     * @return 精度计算后的数据.  
     */ 
    public static double round(double value, int scale, int roundingMode) {   
        BigDecimal bd = new BigDecimal(value);   
        bd = bd.setScale(scale, roundingMode);  
        double d = bd.doubleValue();   
        bd = null;   
        return d;   
    }   
    
    /**  
     * 测试用的main方法.  
     *   
     * @param argc  
     * 运行参数.
     *   
     */  
    public static void main(String[] argc) {   
        //下面都以保留2位小数为例   
           
        //ROUND_UP   
        //只要第2位后面存在大于0的小数，则第2位就+1   
        System.out.println(round(12.3401,2,BigDecimal.ROUND_UP));//12.35   
        System.out.println(round(-12.3401,2,BigDecimal.ROUND_UP));//-12.35   
       
        //ROUND_DOWN   
        //与ROUND_UP相反   
        //直接舍弃第2位后面的所有小数   
        System.out.println(round(12.349,2,BigDecimal.ROUND_DOWN));//12.34   
        System.out.println(round(-12.349,2,BigDecimal.ROUND_DOWN));//-12.34   
       
        //ROUND_CEILING   
        //如果数字>0 则和ROUND_UP作用一样   
        //如果数字<0 则和ROUND_DOWN作用一样   
        System.out.println(round(12.3401,2,BigDecimal.ROUND_CEILING));//12.35   
        System.out.println(round(-12.349,2,BigDecimal.ROUND_CEILING));//-12.34   
       
        //ROUND_FLOOR   
        //如果数字>0 则和ROUND_DOWN作用一样   
        //如果数字<0 则和ROUND_UP作用一样   
        System.out.println(round(12.349,2,BigDecimal.ROUND_FLOOR));//12.34   
        System.out.println(round(-12.3401,2,BigDecimal.ROUND_FLOOR));//-12.35   
        
        //ROUND_HALF_UP [这种方法最常用]   
        //如果第3位数字>=5,则第2位数字+1   
        //备注:只看第3位数字的值,不会考虑第3位之后的小数的   
        System.out.println(round(12.345,2,BigDecimal.ROUND_HALF_UP));//12.35   
        System.out.println(round(12.3449,2,BigDecimal.ROUND_HALF_UP));//12.34   
        System.out.println(round(-12.345,2,BigDecimal.ROUND_HALF_UP));//-12.35   
        System.out.println(round(-12.3449,2,BigDecimal.ROUND_HALF_UP));//-12.34   
        
        //ROUND_HALF_DOWN   
        //如果第3位数字>=5,则做ROUND_UP   
        //如果第3位数字<5,则做ROUND_DOWN   
        System.out.println(round(12.345,2,BigDecimal.ROUND_HALF_DOWN));//12.35   
        System.out.println(round(12.3449,2,BigDecimal.ROUND_HALF_DOWN));//12.34   
        System.out.println(round(-12.345,2,BigDecimal.ROUND_HALF_DOWN));//-12.35   
        System.out.println(round(-12.3449,2,BigDecimal.ROUND_HALF_DOWN));//-12.34   
        
        //ROUND_HALF_EVEN   
        //如果第3位是偶数,则做ROUND_HALF_DOWN   
        //如果第3位是奇数,则做ROUND_HALF_UP   
        System.out.println(round(12.346,2,BigDecimal.ROUND_HALF_EVEN));//12.35   
        System.out.println(round(12.345,2,BigDecimal.ROUND_HALF_EVEN));//12.35   
    
    }

}
