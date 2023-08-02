<%@ include file="com.jsp" %>
<%@ include file="navbar.jsp" %>
<html>
   <body onload="makeActive('list')">
   <%
     Statement st=cn.createStatement();
     ResultSet rst=st.executeQuery("select * from productshow");     
   %>
   <table class='tar' border="1">
     <tr class='tr'>
     <th>Product Id</th>
     <th>Name</th>
     <th>Brand</th>
     <th>Quantity</th>
     <th>Price</th>
     <th style='color:orange'>Action</th> 
     </tr>
     <%
     while(rst.next())
     {
    	 String pid=rst.getString(1);
    	 %>
    	 <tr class='tr'>
    	  <td><%=pid%></td>
    	   <td><%=rst.getString(2)%></td>
    	   <td><%=rst.getString(3)%></td>
    	  <td><%=rst.getString(4)%></td>
    	  <td><%=rst.getString(5)%></td>
    	  <td>
    	  <a href='edit.jsp?pid=<%=pid%>'>Edit</a>
    	  <a href='delete.jsp?pid=<%=pid%>' onclick="return confirm('Are you sure to delete?')">Delete</a>
    	  </td>
    	 
    	 
    	 </tr>
    	 <% 
     }
     %>
   </table>
   </body>
</html>