
package entity;

import java.sql.Date;

/**
 *
 * @author CongHoangDevelop
 */
public class Account {
    private String UserID;
    private Date BirDate;
    private String FirstName;
    private String LastName;
    private int Gender;
    private String Address;
    private String UserPhone;
    private String UserName;
    private String Password;
    private int isAdmin;

    public Account() {
    }

    public Account(String UserID, Date BirDate, String FirstName, String LastName, int Gender, String Address, String UserPhone, String UserName, String Password, int isAdmin) {
        this.UserID = UserID;
        this.BirDate = BirDate;
        this.FirstName = FirstName;
        this.LastName = LastName;
        this.Gender = Gender;
        this.Address = Address;
        this.UserPhone = UserPhone;
        this.UserName = UserName;
        this.Password = Password;
        this.isAdmin = isAdmin;
    }

    public String getUserID() {
        return UserID;
    }

    public void setUserID(String UserID) {
        this.UserID = UserID;
    }

    public Date getBirDate() {
        return BirDate;
    }

    public void setBirDate(Date BirDate) {
        this.BirDate = BirDate;
    }

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String FirstName) {
        this.FirstName = FirstName;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String LastName) {
        this.LastName = LastName;
    }

    public int getGender() {
        return Gender;
    }

    public void setGender(int Gender) {
        this.Gender = Gender;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getUserPhone() {
        return UserPhone;
    }

    public void setUserPhone(String UserPhone) {
        this.UserPhone = UserPhone;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    @Override
    public String toString() {
        return "Account{" + "UserID=" + UserID + ", BirDate=" + BirDate + ", FirstName=" + FirstName + ", LastName=" + LastName + ", Gender=" + Gender + ", Address=" + Address + ", UserPhone=" + UserPhone + ", UserName=" + UserName + ", Password=" + Password + ", isAdmin=" + isAdmin + '}';
    }

    
    

    
    
    
}
