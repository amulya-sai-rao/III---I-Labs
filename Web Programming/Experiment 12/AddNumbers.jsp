<%
int num1 = Integer.parseInt(request.getParameter("fnum"));
int num2 = Integer.parseInt(request.getParameter("snum"));
int num3 = Integer.parseInt(request.getParameter("tnum"));
int result = num1 + num2 + num3;
out.print("First Number : "+num1+"<br>");
out.print("Second Number : "+num2+"<br>");
out.print("Third Number : "+num3+"<br>");
out.print("<strong>Addition of Numbers :</strong> "+result);
%>
