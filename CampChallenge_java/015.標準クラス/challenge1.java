/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hyoujyun;

import java.util.Calendar;
import java.util.Date;

/**
 *
 * @author 小林誠典
 */
public class challenge1 {
    public static void main(String[]args){
        Calendar c = Calendar.getInstance();
        c.set(2016,0,1,0,0,0);
        System.out.println(c.getTime());
        Date d=c.getTime();
        System.out.print(d.getTime());
    }
}
