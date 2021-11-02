/*
 *
 */
package model;

/**
 *
 * 
 */
public class Horario {
    //atributos da classe
    private int hh;
    private int mm;
    private int ss;
    
    
  
    public void setHorario(int hh, int mm, int ss){
        
        this.setHoras(hh);
        this.setMinutos(mm);
        this.setSegundos(ss);
    }
    
    
  
    public Horario(int hh, int mm, int ss){
      
        this.setHorario(hh,mm,ss);
    }
    
   
    
    public String getHorario(){
        
        String horario = "";
        
        if(hh < 10){
            horario += "0";
        }
        horario += hh + ":";
        
        if(mm < 10){
            horario += "0";
        }
        horario += mm + ":";
        
        if(ss < 10){
            horario += "0";
        }
        horario += ss;
        
        return horario;
    }
    
    //Getters e Setters dos atributos

    public int getHoras() {
        return hh;
    }

    public void setHoras(int hh) {
        this.hh = hh;
    }

    public int getMinutos() {
        return mm;
    }

    public void setMinutos(int mm) {
        this.mm = mm;
    }

    public int getSegundos() {
        return ss;
    }

    public void setSegundos(int ss) {
        this.ss = ss;
    }
   

    
}

