<%@ include file="com.jsp" %>

<html>
   <body onload="makeActive('edit')">
   <%
     String pid=request.getParameter("pid");
     String name=request.getParameter("name");
     String brand=request.getParameter("brand");
     String quantity=request.getParameter("quantity");
     String price=request.getParameter("price");
     String query="update productshow set name=?,brand=?,quantity=?,price=? where pid=?";
     PreparedStatement ps=cn.prepareStatement(query);
     ps.setString(1,name);
     ps.setString(2,brand);
     ps.setString(3,quantity);
     ps.setString(4,price);
     ps.setString(5,pid);
     ps.executeUpdate();
     response.sendRedirect("show-list.jsp");
   %>
   
   </body>
</html>