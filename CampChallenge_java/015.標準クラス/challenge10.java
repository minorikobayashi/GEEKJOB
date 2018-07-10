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


import java.io.*;
import static java.lang.Math.random;
import java.util.Date;
import java.util.Calendar;
import java.text.SimpleDateFormat;

public class challenge10 {
    public static void main(String[]args){
       try{File file = new File("mytext.txt");
       FileWriter fw = new FileWriter(file);
       
       Calendar c = Calendar.getInstance();
       c.set(2018,6,1,0,0,0);
       
       Calendar d = Calendar.getInstance();
       d.set(2018,6,31,23,59,59);
       
       Date today = c.getTime();
       Date time = d.getTime();
       SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss 開始");
       SimpleDateFormat sdF = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss 終了"); 
       String dateString = sdf.format(today);
       String datestring = sdF.format(time);
       
       
       double a = random();
       double b = random();
       if(a<b){System.out.print(a+"より"+b+"のほうが大きいです");}
       else{System.out.print(b+"より"+a+"のほうが大きいです");}
       
       fw.write("     "+dateString+"     "+datestring+"\r\n");
       
       
       fw.close();
       
       FileReader fr = new FileReader(file);
       BufferedReader br = new BufferedReader(fr);
       System.out.println(br.readLine());
       br.close();
       
       
       
       }catch(IOException e){
            e.printStackTrace();
        }
    }
}
