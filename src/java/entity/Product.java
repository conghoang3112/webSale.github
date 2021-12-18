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
public class Product {
    public String ProductID;
    public String ProductName;
    public String ProductImg;
    public int price;
    public String Description;
    public String ProductImg1;
    public String type;
    public int quantity;

    public Product() {
    }

    public Product(String ProductID, String ProductName, String ProductImg, int price, String Description, String ProductImg1, String type) {
        this.ProductID = ProductID;
        this.ProductName = ProductName;
        this.ProductImg = ProductImg;
        this.price = price;
        this.Description = Description;
        this.ProductImg1 = ProductImg1;
        this.type = type;
    }

    public Product(String ProductID, String ProductName, String ProductImg, int price, String Description, String ProductImg1, String type, int quantity) {
        this.ProductID = ProductID;
        this.ProductName = ProductName;
        this.ProductImg = ProductImg;
        this.price = price;
        this.Description = Description;
        this.ProductImg1 = ProductImg1;
        this.type = type;
        this.quantity = quantity;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Product{" + "ProductID=" + ProductID + ", ProductName=" + ProductName + ", ProductImg=" + ProductImg + ", price=" + price + ", Description=" + Description + ", ProductImg1=" + ProductImg1 + ", type=" + type + '}';
    }

   

  

    

   
    
    
}
