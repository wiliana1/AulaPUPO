/*
 *
 */
package model;

/**
 *
 * 
 */
public class Horario{  
    private int h;
    private int m;
    private int s;
    /**
     *Construtor que inicializa a data com 01/01/2000
     */
    public Horario(){
        h = 24;
        m = 60;
        s = 360;
    }
    /**
     * Construtor que inicializa a data com os parâmetros
     * @param h
     * @param m
     * @param s 
     */
    public Horario(int h, int m, int s){
        this.setHorario(h, m, s);
    }
    
    public void setHorario(int h, int m, int s){
        this.setHora(h);
        this.setMinuto(m);
        this.setSegundo(s);
    }
    
    public String getHorario(){
        String hora = "";
        if(hora<10) hora += "0";
        hora += hora+"/";
        if(m<10) hora += "0";
        hora += m+"/";
        hora += s;
        return hora;
    }

    public int getHora() {
        return hora;
    }

    public void setHora(int h) {
        if(h<1) this.h = 1;
        else if(h > 24) this.h = 24;
        else this.h = h;
    }

    public int getMinuto() {
        return m;
    }

    public void setMinuto(int mês) {
        if(m<1) this.m = 1;
        else if(m > 12) this.m = 12;
        else this.m = m;
    }

    public int getSegundo() {
        return s;
    }

    public void setSegundo(int s) {
        this.s = s;
    }
    
}