/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.ProductDAO;
import entity.Product;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name = "AddCartControl", urlPatterns = {"/addCart"})
public class AddCartControl extends HttpServlet {

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
        try {

            HttpSession session = request.getSession();
            ProductDAO dao = new ProductDAO();
            String pid = request.getParameter("pid");
            Product d = dao.getDetail(pid);
            int maxQuantity = d.getPrice();
            List<Product> list = new ArrayList<>();

            if (session.getAttribute("list") != null) {
                list = (List<Product>) session.getAttribute("list");

                // check list empty
                if (list.isEmpty()) {
                    list.add(new Product(d.getProductID(), d.getProductName(), d.getProductImg(), d.getPrice(), d.getDescription(), d.getProductImg1(), d.getType(), 1));
                    session.setAttribute("list", list);
                    request.getRequestDispatcher("cart.jsp").forward(request, response);
                    // check list not empty
                } else {
                    for (int i = 0; i < list.size(); i++) {
                        Product p = list.get(i);
                        // found pid
                        if (p.getProductID().equals(pid)) {

                            // check if quantity < max
                            if (p.getQuantity() < maxQuantity) {

                                p.setQuantity(p.getQuantity() + 1);
                                session.removeAttribute("list");
                                session.setAttribute("list", list);
                                request.getRequestDispatcher("cart.jsp").forward(request, response);
                                // check if quantity > max
                            } else {
                                request.getRequestDispatcher("cart.jsp").forward(request, response);
                            }
                            // not found pid
                        } else if (i == list.size() - 1) {
                            list.add(new Product(d.getProductID(), d.getProductName(), d.getProductImg(), d.getPrice(), d.getDescription(), d.getProductImg1(), d.getType(), 1));
                            session.removeAttribute("list");
                            session.setAttribute("list", list);
                            request.getRequestDispatcher("cart.jsp").forward(request, response);
                        }
                    }
                }
            } // list = null
            else {
                list.add(new Product(d.getProductID(), d.getProductName(), d.getProductImg(), d.getPrice(), d.getDescription(), d.getProductImg1(), d.getType(), 1));
                session.setAttribute("list", list);
                request.getRequestDispatcher("cart.jsp").forward(request, response);
            }

        } catch (Exception e) {

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
