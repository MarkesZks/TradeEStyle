/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author gnpai
 */
public class Roupa {
    //atributos
    private int id;
    private String roupa;
    private String condicao;
    private String tipo;
    private String tamanho;
    private String cor;
    private float valor;
    
    //metodos
    public Roupa() {
        this.id = 0;
        this.roupa = "";
        this.condicao = "";
        this.tipo = "";
        this.tamanho = "";
        this.cor = "";
        this.valor = 0;
    }
    
    public Roupa(int id, String roupa, String condicao, String tipo, String tamanho, String cor, float valor) {
        this.id = id;
        this.roupa = roupa;
        this.condicao = condicao;
        this.tipo = tipo;
        this.tamanho = tamanho;
        this.cor = cor;
        this.valor = valor;
    }

    //metodos getters
    public int getId() {
        return id;
    }

    public String getRoupa() {
        return roupa;
    }

    public String getCondicao() {
        return condicao;
    }

    public String getTipo() {
        return tipo;
    }

    public String getTamanho() {
        return tamanho;
    }

    public String getCor() {
        return cor;
    }

    public float getValor() {
        return valor;
    }

    //metodos setters
    public void setId(int id) {
        this.id = id;
    }

    public void setRoupa(String roupa) {
        this.roupa = roupa;
    }

    public void setCondicao(String condicao) {
        this.condicao = condicao;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void setTamanho(String tamanho) {
        this.tamanho = tamanho;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }
    
}
