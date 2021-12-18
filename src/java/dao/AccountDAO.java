/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author CongHoangDevelop
 */
public class AccountDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Account checkLogin(String userName, String userPassword) {
        String query = "select * from Account\n"
                + "where [UserName] = ? and Password = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, userPassword);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getString(1),
                        rs.getDate(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getInt(10));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account checkAccExist(String userName) {
        String query = "select * from Account\n"
                + "where [UserName] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getString(1),
                        rs.getDate(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getInt(10));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void singup(String user, String pass) {
        String query = "INSERT INTO [dbo].[Account]\n"
                + "           ([UserID]\n"
                + "           ,[BirDate]\n"
                + "           ,[FirstName]\n"
                + "           ,[LastName]\n"
                + "           ,[Gender]\n"
                + "           ,[Address]\n"
                + "           ,[UserPhone]\n"
                + "           ,[UserName]\n"
                + "           ,[Password]\n"
                + "           ,[isAdmin])\n"
                + "     VALUES\n"
                + "           (?,null,null,null,null,null,null,?,?,0)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, user);
            ps.setString(3, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Account LoadToEaditAcc(String id) {
        String query = "select * from Account\n"
                + "where UserID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getString(1),
                        rs.getDate(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getInt(10));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void EditAccount(String birDate, String FName, String LName, String gender, String address, String phone, String accid) {
        String query = "UPDATE [dbo].[Account]\n"
                + "   SET \n"
                + "      [BirDate] = ?\n"
                + "      ,[FirstName] = ?\n"
                + "      ,[LastName] = ?\n"
                + "      ,[Gender] = ?\n"
                + "      ,[Address] = ?\n"
                + "      ,[UserPhone] = ?\n"
                + " WHERE [UserID] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, birDate);
            ps.setString(2, FName);
            ps.setString(3, LName);
            ps.setString(4, gender);
            ps.setString(5, address);
            ps.setString(6, phone);
            ps.setString(7, accid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
