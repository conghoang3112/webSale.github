/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author CongHoangDevelop
 */
public class Detail {
    private String ProductID;
    private String ProductName;
    private String ProductImg;
    private int price;
    private String Description;
    private String ProductImg1;

    public Detail() {
    }

    public Detail(String ProductID, String ProductName, String ProductImg, int price, String Description, String ProductImg1) {
        this.ProductID = ProductID;
        this.ProductName = ProductName;
        this.ProductImg = ProductImg;
        this.price = price;
        this.Description = Description;
        this.ProductImg1 = ProductImg1;
    }

    public String getProductID() {
        return ProductID;
    }

    public void setProductID(String ProductID) {
        this.ProductID = ProductID;
    }

    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String ProductName) {
        this.ProductName = ProductName;
    }

    public String getProductImg() {
        return ProductImg;
    }

    public void setProductImg(String ProductImg) {
        this.ProductImg = ProductImg;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public String getProductImg1() {
        return ProductImg1;
    }

    public void setProductImg1(String ProductImg1) {
        this.ProductImg1 = ProductImg1;
    }

    @Override
    public String toString() {
        return "Detail{" + "ProductID=" + ProductID + ", ProductName=" + ProductName + ", ProductImg=" + ProductImg + ", price=" + price + ", Description=" + Description + ", ProductImg1=" + ProductImg1 + '}';
    }

    
    
    
}
