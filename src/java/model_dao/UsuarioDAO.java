/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model_dao;

import java.sql.*;
import model.Usuario;
import util.ConectaDB;
/**
 *
 * @author gnpai
 */


public class UsuarioDAO {
    
    public boolean cadastrar(Usuario usuario) {
        Connection conexao = null;
        
        try{
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
            
                    
            String sql = "INSERT into usuario(id, nome, senha, username, email, telefone, endereco, pais, estado) " + 
                    "values('" + usuario.getId() + "','" + usuario.getNome() + "','" + usuario.getSenha() +
                    "', '" + usuario.getUsername() + "','" + usuario.getEmail()+ "','"+ usuario.getTelefone() + 
                    "','" + usuario.getEndereco() + "','" + usuario.getPais() + "','" + usuario.getEstado() + "')";
            
            stmt.executeUpdate(sql); // Insert, Delete ou Update            
            System.out.println(" Registro Inserido! ");            
            conexao.close();
            return true;
                   
        } catch(ClassNotFoundException | SQLException ex){
            System.out.println(" Exception: " + ex.toString());
            return false;
        }
    }
    
     public Usuario consultar(Usuario usuario) throws ClassNotFoundException{        
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
            //SELECT * from usuario WHERE email = 'joao@email.com' and senha = '123';
            String sql = "SELECT * from usuario WHERE email = '" + usuario.getEmail() + "' and senha = '" + usuario.getSenha() + "'";
            ResultSet rs = stmt.executeQuery(sql);
            
            int n_reg = 0;
            while (rs.next()){
                n_reg++;
            }
            conexao.close();
                   
            if (n_reg == 0){
                return null;
            }else{
                return usuario;
            }
        } catch(SQLException ex){
            System.out.println(" Exception: " + ex.toString());
            return null;
        }         
    }
    
    
    
    
    
    
    
    public Usuario consultarId(Usuario usuario) {
        Connection conexao = null;
        
        try{
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
            String sql = "SELECT * from roupa WHERE id = '" + usuario.getId()+ "'";
            ResultSet rs = stmt.executeQuery(sql);
            
            int n_reg = 0;
            while (rs.next()){
                // "popular o obj fornecedor"
                usuario.setId(rs.getInt("id"));
                usuario.setNome(rs.getString("nome"));
                usuario.setSenha(rs.getString("senha"));
                usuario.setUsername(rs.getString("username"));
                usuario.setEmail(rs.getString("email"));
                usuario.setTelefone(rs.getString("telefone"));
                usuario.setEndereco(rs.getString("endereco"));
                usuario.setPais(rs.getString("pais"));
                usuario.setEstado(rs.getString("estado"));
                n_reg++;
            }
            conexao.close();
                   
            if (n_reg == 0){
                return null;
            }else{
                return usuario;
            }
        } catch(ClassNotFoundException | SQLException ex){
            System.out.println(" Exception: " + ex.toString());
            return null;
        }
    }
}
