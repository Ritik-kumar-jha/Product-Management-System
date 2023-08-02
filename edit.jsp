<%@ include file="com.jsp" %>
<%@ include file="navbar.jsp" %>
<html>
  <body onload="makeActive('edit')">
  <%
    String[] str={"Logitech","Dell","Apple","HP","Lenovo","Acer"};
    PreparedStatement ps=cn.prepareStatement("select * from productshow where pid=?");
    ps.setString(1,request.getParameter("pid"));
    ResultSet rst=ps.executeQuery();
    rst.next();    
    %>
  
  <form action="update-record.jsp" method="post">
   <table class='ta'>
   <tr>
   <td class='tdp'>Product Id</td>
   <td class='tdp'>
   <label><%=rst.getString(1) %></label>
   <input type="hidden" value="<%=rst.getString(1) %>" name="pid">
   </td>  
   </tr>
   
    <tr>
   <td class='tdp'>Edit Product Name</td>
   <td class='tdp'>
   <input type='text' value="<%=rst.getString(2)%>" id="name" name='name' class='tb' onblur="checkValue(this)" ><br>
   
   </td>  
   </tr>
  
  
   <tr>
   <td class='tdp'>Select Product Brand</td>
   <td class='tdp'>
   <select class='tb' name='brand'>
   <%
   String dbrand=rst.getString(3);
   for(String brand:str)
   {
	   if(dbrand.equals(brand))
	   {
   		   %>
   		   <option selected><%=brand%></option>
		   <% 
	   }
	   else{
		   %>
   		   <option><%=brand%></option>
		   <%    
	   }   
   }
   %>
   </select>
   </td>  
   </tr>
  
   <tr>
   <td class='tdp'>Edit Product Quantity</td>
   <td class='tdp'>
   <input type='text' value="<%=rst.getString(4)%>" name='quantity' class='tb' id="quantity" onblur="checkValue(this)"><br>
   </td>  
   </tr>
  
   <tr>
   <td class='tdp'>Edit Product Price</td>
   <td class='tdp'>
   <input type='text' value="<%=rst.getString(5)%>" name='price' class='tb' id="price" onblur="checkValue(this)"><br>
   </td>  
   </tr>
   <tr>
       <td colspan="2" align="right" class='tdp'>
       <button class='bt'>Update Record</button>
       </td>
   </tr>
  
   </table>
   </form>
  </body>
</html>