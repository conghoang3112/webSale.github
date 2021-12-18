/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import entity.Product;
import java.io.IOException;
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
@WebServlet(name = "RemoveCartControl", urlPatterns = {"/removeCart"})
public class RemoveCartControl extends HttpServlet {

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

        String pid = request.getParameter("pid");
        HttpSession session = request.getSession();
        List<Product> list = (List<Product>) session.getAttribute("list");
        // check if user remove cart item when cart is empty
        if(list.isEmpty())
            request.getRequestDispatcher("cart.jsp").forward(request, response);
        // ktra list trong session
        for (int i = 0; i < list.size(); i++) {
            Product p = list.get(i);
            // neu tim thay product
            if (p.getProductID().equals(pid)) {
                // neu product co quantity = 1
                if (p.getQuantity() == 1) {
                    list.remove(p);
                    session.removeAttribute("list");
                    session.setAttribute("list", list);
                    request.getRequestDispatcher("cart.jsp").forward(request, response);
                } // neu product co quantity lon hon 1
                else {
                    p.setQuantity(p.getQuantity() - 1);
                    session.removeAttribute("list");
                    session.setAttribute("list", list);
                    request.getRequestDispatcher("cart.jsp").forward(request, response);
                }
            }
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
