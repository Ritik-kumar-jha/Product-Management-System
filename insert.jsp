<%@ include file="navbar.jsp" %>
<html>
  <body onload="makeActive('save')">
  <form action="save-record.jsp" method="post">
   <table class='ta'>
   <tr>
   <td class='tdp'>Enter Product Id</td>
   <td class='tdp'>
   <input type='text' id="pid" name='pid' class='tb' onblur="checkValue(this)" ><br>
   <span id="spid"></span>
   </td>  
   </tr>
   
    <tr>
   <td class='tdp'>Enter Product Name</td>
   <td class='tdp'>
   <input type='text' id="name" name='name' class='tb' onblur="checkValue(this)" ><br>
   <span id="sname"></span>
   </td>  
   </tr>
  
  
   <tr>
   <td class='tdp'>Select Product Brand</td>
   <td class='tdp'>
   <select class='tb' name='brand'>
   <option>Logitech</option>
   <option>Dell</option>
   <option>Apple</option>
   <option>Hp</option>
   <option>Lenovo</option>
   <option>Acer</option>
   
   
   </select>
   </td>  
   </tr>
  
   <tr>
   <td class='tdp'>Enter Product Quantity</td>
   <td class='tdp'>
   <input type='text' name='quantity' class='tb' id="quantity" onblur="checkValue(this)"><br>
   <span id="squantity"></span>
   </td>  
   </tr>
  
   <tr>
   <td class='tdp'>Enter Product Price</td>
   <td class='tdp'>
   <input type='text' name='price' class='tb' id="price" onblur="checkValue(this)"><br>
   <span id="sprice"></span>
   </td>  
   </tr>
   <tr>
       <td colspan="2" align="right" class='tdp'>
       <button class='bt' onclick="return validateInput()">Save Record</button>
       </td>
   </tr>
  
   </table>
   </form>
  </body>
</html>