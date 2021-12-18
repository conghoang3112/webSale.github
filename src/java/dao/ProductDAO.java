/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Detail;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author CongHoangDevelop
 */
public class ProductDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    //ham return list product
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public List<Product> getProductTop3() {
        List<Product> list = new ArrayList<>();
        String query = "select top 3 * from Product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public List<Product> getProductNext3(int a) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product\n"
                + "order by ProductID\n"
                + "offset ?	rows\n"
                + "fetch next 3 rows only ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, a);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public List<Product> getProductByType(String type) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product where type = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, type);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public Product getDetail(String id) {

        String query = "select * from Product\n"
                + "where ProductID = '" + id + "'";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                return (new Product(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public List<Product> getSearchByName(String txt) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product\n"
                + "where ProductName like ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txt + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public int getQuantity(String pid) {
        List<Product> list = new ArrayList<>();
        String query = "select quantity from Product\n"
                + "where ProductID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public void deldeteProduct(String pid) {
        String query = "delete from Product\n"
                + "where ProductID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void InserProduct(String id, String name, String price, String image1, String image2, String description, String type) {
        String query = "INSERT INTO [dbo].[Product]\n"
                + "           ([ProductID]\n"
                + "           ,[ProductName]\n"
                + "           ,[ProductImg]\n"
                + "           ,[price]\n"
                + "           ,[Description]\n"
                + "           ,[ProductImg1]\n"
                + "           ,[type])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, name);
            ps.setString(3, price);
            ps.setString(4, image1);
            ps.setString(5, image2);
            ps.setString(6, description);
            ps.setString(7, type);
            ps.executeUpdate();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "loi");
        }
    }

    public void EditProduct(String name, String image1, String price, String description, String image2, String pid) {
        String query = "update Product\n"
                + "set ProductName=?,ProductImg=?,price=?,[Description]=?,ProductImg1=?\n"
                + "where ProductID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image1);
            ps.setString(3, price);
            ps.setString(4, description);
            ps.setString(5, image2);
            ps.setString(6, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
