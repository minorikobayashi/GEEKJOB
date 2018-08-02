package jums;


import java.sql.Timestamp;
import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author 小林誠典
 */
public class UserDataBeans {
    
    
    private String name;
    private int year;
    private int month;
    private int day;
    private String tell;
    private int type;
    private String comment;
   
    
    
    public String getName(){
        return name;
    }
    public void setName(String name){
        this.name=name;
    }
    public void setYear(int year){
        this.year=year;}
    public int getYear(){
        return year;
    }
       public int getMonth(){
        return month;
    }
    public void setMonth(int month){
        this.month=month;
    }
    public int getDay(){
        return day;
    }
    public void setDay(int day){
        this.day=day;
    }
    public String getTell(){
        return tell;
    }
    public void setTell(String tell){
        this.tell=tell;
    }
    public int getType(){
        return type;
    }
    public void setType(int type){
        this.type=type;
    }public String getComment(){
        return comment;
    }
    public void setComment(String comment){
        this.comment=comment;
    }
}
