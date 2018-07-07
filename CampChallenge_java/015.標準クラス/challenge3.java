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
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class challenge3 {
    public static void main(String[]args){
        
        Calendar c = Calendar.getInstance();
        c.set(2016,10,4,10,0,0);
        Date now =c.getTime();
        
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateString =sdf.format(now);
        System.out.println(now.getTime());
        System.out.print(dateString);
        
    }
    
}
