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
abstract public class Human {
    //手札
    public ArrayList<Integer> myCards=new ArrayList<Integer>();
    //手札の合計を計算するメソッド
    abstract public int open();
    //引いたカードを手札に追加するメソッド
    abstract public void  setCards(ArrayList<Integer> drawingCards);
    //カードをまだ引くか判断するメソッド
    abstract public boolean checkSum();
    
}
