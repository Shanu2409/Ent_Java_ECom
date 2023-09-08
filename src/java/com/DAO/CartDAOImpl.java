package com.DAO;

import com.entity.Cart;
import com.mysql.cj.xdevapi.PreparableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.http.HttpSession;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author shanu
 */
public class CartDAOImpl implements CartDAO{
    private Connection con;

    public CartDAOImpl(Connection con) {
        this.con = con;
    }
    
    

    @Override
    public boolean addCard(Cart c) {
        boolean f = false;
        try {
            String sql = "insert into cart(pid,uid,pname,owner,price,total) values(?,?,?,?,?,?)";
            
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, c.getPid());
            ps.setInt(2, c.getUserId());
            ps.setString(3, c.getProductName());
            ps.setString(4, c.getOwner());
            ps.setDouble(5, c.getPrice());
            ps.setDouble(6, c.getTotal());
            
            int i = ps.executeUpdate();
            
            
            
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    
}
