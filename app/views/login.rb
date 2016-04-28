<%if @errors%>
  <ul><%@errors.each do |message|%>
   <li><%=message%></li>
  <%end%>
  </ul>
<% end%>
<h1>Login:</h1>
<form method="POST" action="/login">
  <input type="text" name="email" value="<%= @user.email %>">
  <input type="password" name="password">
  <input type="submit" value="Login">
</form>
