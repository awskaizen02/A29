<!DOCTYPE html>
<html>
<head>
  <title>Echoing HTML Form Query Parameters</title>
</head>
<body>
  <h3>Choose an author:</h3>
  <form method="get">
    <input type="checkbox" name="author" value="Sunil Devops support">Sunil
    <input type="checkbox" name="author" value="Kamalesh cloud support">kamalesh
    <input type="checkbox" name="author" value="ad support">ramganesh
    <input type="checkbox" name="author" value="AD Eng">Nandha
    <input type="checkbox" name="author" value="Devops Srn eng">sudhakar
    <input type="checkbox" name="author" value="cloud sr eng">Sakthi      
      
    <input type="submit" value="Query">
  </form>
 
<% String[] authors = request.getParameterValues("author");
   if (authors != null) { %>
      <h3>You have selected author(s):</h3>
      <ul>
<%    for (int i = 0; i < authors.length; ++i) { %>
         <li><%= authors[i] %></li>
<%    } %>
      </ul>
      <a href="<%= request.getRequestURI() %>">BACK</a>
<% } %>
</body>
</html>