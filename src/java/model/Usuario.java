/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author gnpai
 */
public class Usuario {
    //atributos
    private int id;
    private String nome;
    private String senha;
    private String username;
    private String email;
    private String telefone;
    private String endereco;
    private String pais;
    private String estado;
    
    //metodos
    public Usuario() {
        this.id = 0;
        this.nome = "";
        this.senha = "";
        this.username = "";
        this.email = "";
        this.telefone = "";
        this.endereco = "";
        this.pais = "";
        this.estado = "";
    }
    
    public Usuario(int id, String nome, String senha, String username, String email, String telefone, String endereco, String pais, String estado) {
        this.id = id;
        this.nome = nome;
        this.senha = senha;
        this.username = username;
        this.email = email;
        this.telefone = telefone;
        this.endereco = endereco;
        this.pais = pais;
        this.estado = estado;
    }

    //metodos getters
    public int getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public String getSenha() {
        return senha;
    }

    public String getUsername() {
        return username;
    }

    public String getEmail() {
        return email;
    }

    public String getTelefone() {
        return telefone;
    }

    public String getEndereco() {
        return endereco;
    }

    public String getPais() {
        return pais;
    }

    public String getEstado() {
        return estado;
    }

    //metodos setters
    public void setId(int id) {
        this.id = id;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
}
