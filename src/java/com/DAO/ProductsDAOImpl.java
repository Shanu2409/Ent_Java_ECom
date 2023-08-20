/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.entity.ProductDetails;
import java.sql.*;

/**
 *
 * @author shanu
 */
public class ProductsDAOImpl implements ProductsDAO {

    private Connection con;

    public ProductsDAOImpl(Connection con) {
        super();
        this.con = con;
    }

    @Override
    public boolean AddProducts(ProductDetails p) {
        boolean f = false;

        try {
            String sql = "insert into product_details(productname, owner, price, productCategory, status, photo, email) values(?,?,?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, p.getProductname());
            ps.setString(2, p.getOwner());
            ps.setString(3, p.getPrice());
            ps.setString(4, p.getProductCategory());
            ps.setString(5, p.getStatus());
            ps.setString(6, p.getPhotoName());
            ps.setString(7, p.getEmail());

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
