/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model_dao;

import java.sql.*;
import model.Roupa;
import util.ConectaDB;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author gnpai
 */
public class RoupaDAO {

    public boolean cadastrarRoupa(Roupa roupa) {
        Connection conexao = null;

        try {
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();

            String sql = "INSERT into roupa(id, roupa, condicao, tipo, tamanho, cor, valor) "
                    + "values('" + roupa.getId() + "','" + roupa.getRoupa() + "','" + roupa.getCondicao()
                    + "', '" + roupa.getTipo() + "','" + roupa.getTamanho() + "','" + roupa.getCor() + "','" + roupa.getValor() + "')";

            stmt.executeUpdate(sql);
            System.out.println(" Registro Inserido! ");
            conexao.close();
            return true;

        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(" Exception: " + ex.toString());
            return false;
        }
    }

    public Roupa consultarId(Roupa roupa) {
        Connection conexao = null;

        try {
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
            String sql = "SELECT * from roupa WHERE id = '" + roupa.getId() + "'";
            ResultSet rs = stmt.executeQuery(sql);

            int n_reg = 0;
            while (rs.next()) {

                roupa.setId(rs.getInt("id"));
                roupa.setRoupa(rs.getString("roupa"));
                roupa.setCondicao(rs.getString("condicao"));
                roupa.setTipo(rs.getString("tipo"));
                roupa.setTamanho(rs.getString("tamanho"));
                roupa.setCor(rs.getString("cor"));
                roupa.setValor(rs.getFloat("valor"));
                n_reg++;
            }
            conexao.close();

            if (n_reg == 0) {
                return null;
            } else {
                return roupa;
            }
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(" Exception: " + ex.toString());
            return null;
        }
    }

    public Roupa consultarRoupa(Roupa roupa) {
        Connection conexao = null;

        try {
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
            String sql = "SELECT * from roupa WHERE roupa = '" + roupa.getRoupa() + "'";
            ResultSet rs = stmt.executeQuery(sql);

            int n_reg = 0;
            while (rs.next()) {

                roupa.setId(rs.getInt("id"));
                roupa.setRoupa(rs.getString("roupa"));
                roupa.setCondicao(rs.getString("condicao"));
                roupa.setTipo(rs.getString("tipo"));
                roupa.setTamanho(rs.getString("tamanho"));
                roupa.setCor(rs.getString("cor"));
                roupa.setValor(rs.getFloat("valor"));
                n_reg++;
            }
            conexao.close();

            if (n_reg == 0) {
                return null;
            } else {
                return roupa;
            }
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(" Exception: " + ex.toString());
            return null;
        }
    }

    public List consultarGeral() {
        Connection conexao = null;

        List minha_lista = new ArrayList();

        try {
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
            String sql = "SELECT * from roupa";
            ResultSet rs = stmt.executeQuery(sql);

            int n_reg = 0;
            while (rs.next()) {
                Roupa roupa = new Roupa();

                roupa.setId(rs.getInt("id"));
                roupa.setRoupa(rs.getString("roupa"));
                roupa.setCondicao(rs.getString("condicao"));
                roupa.setTipo(rs.getString("tipo"));
                roupa.setTamanho(rs.getString("tamanho"));
                roupa.setCor(rs.getString("cor"));
                roupa.setValor(rs.getFloat("valor"));

                minha_lista.add(roupa);
                n_reg++;
            }
            conexao.close();

            if (n_reg == 0) {
                return null;
            } else {
                return minha_lista;
            }

        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(" Exception: " + ex.toString());
            return null;
        }
    }

    public boolean alterarRoupa(Roupa roupa) {
        Connection conexao = null;

        try {
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();

            //UPDATE funcionario SET nome='João', cargo='Estagiário',end_cep='08544-225',end_comp='Casa 132' WHERE 123            
            String sql = "UPDATE roupa SET "
                    + "roupa='" + roupa.getRoupa()
                    + "', condicao='" + roupa.getCondicao()
                    + "',tipo='" + roupa.getTipo()
                    + "',tamanho='" + roupa.getTamanho()
                    + "',cor='" + roupa.getCor()
                    + "',valor='" + roupa.getValor()
                    + "' WHERE id= " + roupa.getId();

            stmt.executeUpdate(sql); // Insert, Delete ou Update        
            //System.out.println(" SQL: " + sql);

            System.out.println(" Registro Alterardo com sucesso! ");
            conexao.close();
            return true;

        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(" Erro: " + ex.toString());
            return false;
        }
    }

    public boolean excluirRoupa(Roupa roupa) {
        Connection conexao = null;

        try {
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();

            String sql = "DELETE FROM roupa WHERE id = '" + roupa.getId() + "'";

            stmt.executeUpdate(sql);
            System.out.println(" Registro Excluído! ");
            conexao.close();
            return true;

        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(" Erro: " + ex.toString());
            return false;
        }
    }

}
