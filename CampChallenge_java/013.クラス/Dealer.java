/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BlackJack;

import java.util.ArrayList;
import java.util.Random;

/**
 *
 * @author 小林誠典
 */
public class Dealer extends Human {
    //山札
    ArrayList<Integer> cards= new ArrayList<Integer>();
    //山札を作るメソッド
    public Dealer(){
         for(int i=1; i<14; i++){
             for(int u=0; u<4; u++){cards.add(i);}
         }
    }
    //山札からカードをランダムで２枚引くメソッド（最初）
    public ArrayList<Integer> deal(){
        ArrayList<Integer> tefuda=new ArrayList<Integer>();
        Random rand = new Random();
        for(int c=0; c<2; c++){
        Integer j= rand.nextInt(cards.size());
        tefuda.add(cards.get(j));
        cards.remove(j);
        }
        return tefuda;
    }
    //山札からカードをランダムで１枚引くメソッド
    public ArrayList<Integer> hit(){
        ArrayList<Integer> tuika=new ArrayList();
        Random rand = new Random();
        Integer g=rand.nextInt(cards.size());
        tuika.add(cards.get(g));
        cards.remove(g);
        return tuika;
    }
    public void setCards(ArrayList<Integer> drawingCards){
        for(int i=0; i<drawingCards.size(); i++){
            myCards.add(drawingCards.get(i));
        }
    }
    public boolean checkSum(){
        if(open()<=17){return true;}
        else{return false;}
    }
    public int open(){
        int k=0;
        for(int i=0; i<myCards.size(); i++){
            k = k + myCards.get(i);
        }
        return k;
    }

    
}