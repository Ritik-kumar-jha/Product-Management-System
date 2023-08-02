<%@ include file="navbar.jsp" %>
<html>
   <body onload="makeActive('search')">
     <form action="search-record.jsp" method="post">
      <table class='ta' style="background-color:gray">
        <tr>
          <td style="color:white ; font-size:28px">Enter Product Id</td>
          <td><input type='number' name='pid' required style="font-size:25px"></td>
          <td><button style='background-color:red; font-size:20px' >Show Record</button></td>
        </tr>
      </table>
     </form>
   </body>
</html>