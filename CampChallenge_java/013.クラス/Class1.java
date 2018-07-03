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
public class Class1 {
    public String name =null;
    public int age=0;
    public String jusho=null;
    
    public void setProfile(String n,int a,String m){
        this.name=n;
        this.age=a;
        this.jusho=m;
    }
    public void printProfile(){
        System.out.print("名前は"+name);
        System.out.print("年齢は"+age);
        System.out.print("住所は"+jusho);
    }
    
}
 