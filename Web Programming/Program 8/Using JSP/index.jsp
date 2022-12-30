<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
//String id = request.getParameter("userId");
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "20wh1a1223";
String userId = "root";
String password = "1234";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>uname</b></td>
<td><b>password</b></td>
<td><b>email</b></td>
<td><b>phone</b></td>
<br>
<td>123_123</td>
<td>123</td>
<td>123@gmail.c</td>
<td>1234567890</td>
<br>
<td>124_124</td>
<td>124</td>
<td>124@gmail.c</td>
<td>1234567894</td>
<br>
<td>125_125</td>
<td>125</td>
<td>125@gmail.c</td>
<td>1234567892</td>
<br>
<td>126_126</td>
<td>126</td>
<td>126@gmail.c</td>
<td>1234567893</td>
<br>
<td>127_127</td>
<td>127</td>
<td>127@gmail.c</td>
<td>1234567894</td>
<br>
<td>128_128</td>
<td>128</td>
<td>128@gmail.c</td>
<td>1234567895</td>
</tr>
<%

try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM member";

resultSet = statement.executeQuery(sql);


while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("uname") %></td>
<td><%=resultSet.getString("password") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("phone") %></td>

</tr>
<% 
}
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
