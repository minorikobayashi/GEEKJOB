/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hyoujyun;

/**
 *
 * @author 小林誠典
 */

import java.util.Date;
import java.util.Calendar;
import java.text.SimpleDateFormat;
public class challenge2 {
    public static void main(String[]args){
        Calendar c = Calendar.getInstance();
        c.set(1988, 4,21,1,23,45);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH時mm分ss秒");
        Date d =c.getTime();
        String dateString = sdf.format(d);
        System.out.print(dateString);
    }
        
}
