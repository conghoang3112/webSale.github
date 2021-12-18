/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

/**
 *
 * @author Admin
 */
public class OrderDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public String randomOid() {
        String character = "ABCDEFGHIKLMNOPQRSTUVWXYZ123456789abcdefghiklmnopqrstuvwxyz";
        String random = "";
        int length = 7;
        Random rand = new Random();
        char[] text = new char[length];
        for (int i = 0; i < length; i++) {
            text[i] = character.charAt(rand.nextInt(character.length()));
        }
        for (int i = 0; i < text.length; i++) {
            random += text[i];
        }
        return random;
    }
    
    public void insertOrder(List<Product> list, String uid) {
        long total = 0;
        String query = "";
        
        // cal total
        for(int i=0;i<list.size();i++)
        {
            total += list.get(i).getPrice()*list.get(i).getQuantity();
        }
        
        SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd");
        String oid = randomOid();
        // insert order 
        query = "insert into [Order] values (?,?,?,?)\n";
        // insert order detail
        for(int i=0;i<list.size();i++)
        {
         query += "insert into OrderDetail values ('" + oid + "','" + list.get(i).getProductID() + "'," +list.get(i).getQuantity() +")\n";
        }
        
        try {
            
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, oid);
            ps.setLong(2,total);
            ps.setString(3,s.format(new Date()));
            ps.setString(4, uid);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }
    
    
}
