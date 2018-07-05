/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BlackJack;

import java.util.ArrayList;

/**
 *
 * @author 小林誠典
 */
public class User extends Human {
    
    public int open(){
        int k=0;
        for(int i=0; i<myCards.size(); i++){
            k = k + myCards.get(i);
        }
        return k;
    }
    public void  setCards(ArrayList<Integer> drawingCards){
        for(int i=0; i<drawingCards.size(); i++){
            myCards.add(drawingCards.get(i));
        }
    }
    public boolean checkSum(){
        if(open()<17){return true;}
        else{return false;}
    }
    
}
