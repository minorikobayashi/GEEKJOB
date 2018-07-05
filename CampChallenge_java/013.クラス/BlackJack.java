/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BlackJack;

/**
 *
 * @author 小林誠典
 */
public class BlackJack {
    public static void main(String[]args){
        User user=new User();
        Dealer dealer =new Dealer();
        //山札から二枚
        user.setCards(dealer.deal());
        dealer.setCards(dealer.deal());
        
        System.out.println("Userのカード"+user.myCards);
        System.out.println("Deaalerのカード"+dealer.myCards);
        
        //userがもう１枚引くかどうかを判断する
        
        user.open();
        System.out.println("Userの合計"+user.open());
        while(user.checkSum()==true){
            user.setCards(dealer.hit());
            System.out.println("Userの合計"+user.open());
        }
        
        if(user.open()>21){
            System.out.println("Userの負け");
        }else{
        
        //dealerがもう１枚引くか判断
        
       
        while(dealer.checkSum()==true){
            dealer.setCards(dealer.hit());
        }
        System.out.println("Dealerの合計"+dealer.open());
        if(dealer.open()>21){
            System.out.println("Userの勝ち");
        }else{
        
        //どっちの合計が大きいか判断
        
        if(user.open()>dealer.open()){
            System.out.println("Userの勝利");
        }else if(user.open()==dealer.open()){
            System.out.print("引き分け");
        }else{
            System.out.print("Userの負け");
        }
        }
        
        //終わり
        
    }
    }      
}
