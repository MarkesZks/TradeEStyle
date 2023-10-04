/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;
import model.Usuario;
import model_dao.UsuarioDAO;

/**
 *
 * @author GABRIEL
 */
public class ControllerUser {
    
     public boolean logar(String email, String senha) throws ClassNotFoundException{
        Usuario usuario = new Usuario();
        usuario.setEmail(email);
        usuario.setSenha(senha);
        
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        if (usuarioDAO.consultar(usuario)==null){
            return false;
        }else{
            return true;
        }        
}
}
