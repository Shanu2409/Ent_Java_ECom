/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.entity.ProductDetails;
import java.sql.Connection;

public interface ProductsDAO {
    public boolean AddProducts(ProductDetails b);
}
