
import dao.AccountDAO;
import entity.Account;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author CongHoangDevelop
 */
public class test {

    public static void main(String[] args) {
        AccountDAO dao = new AccountDAO();
        dao.EditAccount("1999-02-02", "binhhhhhhh", "an", "1", "sài gòn", "123456", "an543");
        Account p = dao.LoadToEaditAcc("an543");
        System.out.println(p);
    }
}
