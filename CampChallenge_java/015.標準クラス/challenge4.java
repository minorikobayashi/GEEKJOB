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

public class challenge4 {
    public static void main(String[]args){
        Calendar one = Calendar.getInstance();
        Calendar two = Calendar.getInstance();
        one.set(2015,0,1,0,0,0);
        two.set(2015,11,31,23,59,59);
        Date a =one.getTime();
        Date b =two.getTime();
        System.out.print(a.getTime()-b.getTime());
    }
    
}
