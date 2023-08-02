<%@ include file="com.jsp" %>
<%@ include file="navbar.jsp" %>
<html>
   <body onload="makeActive('list')">
   <%
     String pid=request.getParameter("pid");
     
     PreparedStatement ps=cn.prepareStatement("select * from productshow where pid=?");
     ps.setString(1,pid);
     ResultSet rst=ps.executeQuery();  
     if(rst.next())
     {
    	 %>
    	 <table class='tar' border="1" style='width:40%'>
    	 <tr style='background-color:orange;font-size:22px;color:white'>
    	 <th align="left">Product Id</th>
    	 <td><%=rst.getString(1) %></td>
    	 </tr>
    	 
    	 <tr>
    	 <th align="left">Product Name</th>
    	 <td><%=rst.getString(2) %></td>
    	 </tr>
         
         <tr>
    	 <th align="left">Product Brand</th>
    	 <td><%=rst.getString(3) %></td>
    	 </tr>
         
         <tr>
    	 <th align="left">Product Quantity</th>
    	 <td><%=rst.getString(4) %></td>
    	 </tr>
         
         <tr>
    	 <th align="left">Product Price</th>
    	 <td><%=rst.getString(5) %></td>
    	 </tr>
         
          </table>
     <% }else{
    	%>
    	<div class='dv'>
    	<h2 style='color:red'>Product with id <%=pid %> not Found</h2>
    	</div>
    	<% 
     }
   %>
    
   </table>
   </body>
</html>