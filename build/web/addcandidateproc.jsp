<%-- 
    Document   : addcandidateproc
    Created on : 27 Dec 2025, 11:26:54 pm
    Author     : arthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {

                Class.forName("com.mysql.cj.jdbc.Driver");

                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/votingdb", "root", "root");

                //select * from userlogin where userid = 1 ;
                //String id = (String) request.getParameter("idno");
                String C_name = (String) request.getParameter("cname");
                String party = (String) request.getParameter("party");

                String query = "INSERT INTO candidate (candidate_name, party_name) VALUES (?, ?)";
                PreparedStatement ps = conn.prepareStatement(query);
                ps.setString(1, C_name);
                ps.setString(2, party);
                ps.executeUpdate();

                
                out.println("<div class='success-box'>✅ Data added successfully</div>");
                conn.close();
            } catch (ClassNotFoundException ex) {
                out.println(ex.getMessage());
            } catch (SQLException ex) {
                out.println(ex.getMessage());
            }


        %>
        <div class="action-btn">
            <a href="admin.jsp">🏠 Home</a>
        </div>
    </body>
</html>
