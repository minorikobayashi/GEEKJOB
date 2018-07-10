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

public class challenge9 {
    public static void main(String[]args){
        try{
            File name = new File("myText.txt");
            FileWriter fw = new FileWriter(name);
            
            fw.write("私の名前は小林誠典です。");
            fw.close();
            
            FileReader fr = new FileReader(name);
             BufferedReader br = new BufferedReader(fr);
             System.out.print(br.readLine());
             fr.close();
            
        }catch(IOException e){
            e.printStackTrace();
        }
    }
}
