<%@ include file="com.jsp" %>

<html>
   <body onload="makeActive('save')">
   <%
     String pid=request.getParameter("pid");
   PreparedStatement ps1=cn.prepareStatement("select * from productshow where pid=?");
   ps1.setString(1,pid);
   ResultSet rst=ps1.executeQuery();
   if(rst.next())
   {
	   %>
	   <jsp:include page="insert.jsp"/>
	   <div style="text-align:center;margin-top:20px">
	   <h2 style="color:red">Product With Id <%=pid %> Already Exists</h2>
	   </div>
	   
	   <% 
	   return;
   }
     String name=request.getParameter("name");
     String brand=request.getParameter("brand");
     String quantity=request.getParameter("quantity");
     String price=request.getParameter("price");
     String query="insert into productshow values(?,?,?,?,?)";
     PreparedStatement ps=cn.prepareStatement(query);
     ps.setString(1,pid);
     ps.setString(2,name);
     ps.setString(3,brand);
     ps.setString(4,quantity);
     ps.setString(5, price);
     ps.executeUpdate();
   %>
   <%@ include file="navbar.jsp" %>
    <div class='dv'>
    <h1 style='color:red'>Product Record has been Inserted Successfully</h1>
    </div>
 
   </body>
</html>