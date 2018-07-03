/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Class1;

/**
 *
 * @author 小林誠典
 */
public class Main2  {
    public static void main(String[]args){
        Class2 hito=new Class2();
        hito.name="小林";
        hito.age=22;
        String jusho="千葉";
        
        hito.setProfile("小林",22,"千葉");
        hito.printProfile();
        hito.clearProfile();
        hito.printProfile();
        
    }
    
}
