<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.util.*"%>
<html>
<head>
  <title>��½</title>
</head>
<body>
<center>
  <h1>��½����</h1>
  <hr>
  <br>
  <br>
  <!-- ���������ϸ�Ĵ�����ʾ -->
  <%
    if(request.getAttribute("errors")!=null)
    {
      // �д���Ҫ���д�ӡ���
      List all = (List)request.getAttribute("errors") ;
      Iterator iter = all.iterator() ;
      while(iter.hasNext())
      {
  %>
  <li><%=iter.next()%>
      <%
			}
		}
	%>

    <form action="LoginServlet" method="post">
      <table>
        <tr>
          <td colspan="2">�û���½</td>
        </tr>
        <tr>
          <td>�û�����</td>
          <td><input type="text" name="id" value="${person.id}"></td>
        </tr>
        <tr>
          <td>��&nbsp;&nbsp;�룺</td>
          <td><input type="password" name="password" value="${person.password}"></td>
        </tr>
        <tr>
          <td colspan="2">
            <input type="submit" value="��½">
            <input type="reset" value="����">
          </td>
        </tr>
      </table>
    </form>
</center>
</body>
</html>