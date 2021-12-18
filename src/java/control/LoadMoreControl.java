/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.ProductDAO;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author CongHoangDevelop
 */
@WebServlet(name = "LoadMoreControl", urlPatterns = {"/load"})
public class LoadMoreControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String a = request.getParameter("exits");
        int ia = Integer.parseInt(a);
        ProductDAO dao = new ProductDAO();
        List<Product> list = dao.getProductNext3(ia);
        PrintWriter out = response.getWriter();
        for (Product o : list) {
            out.println("<div class=\"product col-md-4 col-sm-6\" style=\"margin-bottom: 50px;\">\n"
                    + "                        <div class=\"product-grid\">\n"
                    + "                            <div class=\"product-image\">\n"
                    + "                                <a href=\"#\">\n"
                    + "                                    <img class=\"pic-1\" src=\""+o.getProductImg()+"\">\n"
                    + "                                    <img class=\"pic-2\" src=\""+o.getProductImg1()+"\">\n"
                    + "                                </a>\n"
                    + "                                <ul class=\"social\">\n"
                    + "                                    <li><a href=\"\" data-tip=\"Quick View\"><i class=\"fa fa-search\"></i></a></li>\n"
                    + "                                    <li><a href=\"\" data-tip=\"Add to Wishlist\"><i class=\"fa fa-shopping-bag\"></i></a></li>\n"
                    + "                                    <li><a href=\"\" data-tip=\"Add to Cart\"><i class=\"fa fa-shopping-cart\"></i></a></li>\n"
                    + "                                </ul>\n"
                    + "                            </div>\n"
                    + "                            <div class=\"product-content\">\n"
                    + "                                <h3 class=\"title\"><a href=\"detail?pid="+o.getProductID()+"\" title=\"View Product\">"+o.getProductName()+"</a></h3>\n"
                    + "                                <div class=\"price\">"+o.getPrice()+ "VND\n"
                    + "                                </div>\n"
                    + "                                <a class=\"add-to-cart\" href=\"\">+ Add To Cart</a>\n"
                    + "                            </div>\n"
                    + "                        </div>\n"
                    + "                    </div>");
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
