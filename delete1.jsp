<%@ include file="navbar.jsp" %>
<html>
   <body onload="makeActive('delete')">
     <form action="show-list.jsp" method="post">
      <table class='ta'>
        <tr>
          <td>Enter Product Id</td>
          <td><input type='number' name='pid' required></td>
          <td><button style='background-color:red' >Delete Record</button></td>
        </tr>
      </table>
     </form>
   </body>
</html>