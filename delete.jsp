<%@ include file="com.jsp" %>

<html>
   <body onload="makeActive('save')">
   <%
     String pid=request.getParameter("pid");
     PreparedStatement ps=cn.prepareStatement("delete from productshow where pid=?");
     ps.setString(1,pid);
     ps.executeUpdate();
     response.sendRedirect("show-list.jsp");
     %>
 
   </body>
</html>