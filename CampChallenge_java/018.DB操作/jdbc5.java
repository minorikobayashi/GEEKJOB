/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author 小林誠典
 */
@WebServlet(urlPatterns = {"/jdbc5"})
public class jdbc5 extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet jdbc5</title>");            
            out.println("</head>");
            out.println("<body>");

             Connection con=null;
            PreparedStatement st =null;
            ResultSet data= null;
            
            
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/GEEKJOB_kobayashi?useUnicode=true&useJDBCCompliantTimezoneShift="
                    + "true&useLegacyDatetimeCode=false&serverTimezone=UTC",
                    "KOBAYASHI","password5173");
            
            st=con.prepareStatement("select * from profiles where name like '%茂%'");
            
            data=st.executeQuery();
            
            while(data.next()){
                 out.print("profileID:"+data.getInt("profileID")+"<br>");
                out.print("name:"+data.getString("name")+"<br>");
                out.print("tel:"+data.getString("tel")+"<br>");
                out.print("age:"+data.getInt("age")+"<br>");
                out.print("birthday:"+data.getString("birthday")+"<br>");
            }
            
            

            out.println("</body>");
            out.println("</html>");
        }catch(Exception ex) {
            System.out.println(ex.getMessage());
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
