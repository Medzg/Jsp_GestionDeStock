import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspWriter;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/LoginServlet" )
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



        PrintWriter out = response.getWriter();


        String user =  request.getParameter("username");
        String pwd = request.getParameter("password");

        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stock_project","root","");
            PreparedStatement ps = con.prepareStatement("SELECT *  FROM  login WHERE user = ? and pwd = ?");
            ps.setString(1,user);
            ps.setString(2,pwd);
            ResultSet rs = ps.executeQuery();
            if (rs.next()){
                out.print("hello");
            }
            else
            {
                out.print("error");
            }


        }
        catch (Exception e2){
            System.out.println(e2);

        }
        out.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
