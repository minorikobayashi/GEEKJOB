/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nojiretu;

/**
 *
 * @author 小林誠典
 */
public class challenge7 {
    public static void main(String[]args){
        String string="きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます";
        String a = string.replace("U","う" );
         String b =a.replace("I","い");
         System.out.println(b);
    }
}
