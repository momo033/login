<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.util.*"%>
<html>
<head>
  <title>登陆</title>
</head>
<body>
<center>
  <h1>登陆范例</h1>
  <hr>
  <br>
  <br>
  <!-- 加入更加详细的错误提示 -->
  <%
    if(request.getAttribute("errors")!=null)
    {
      // 有错误，要进行打印输出
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
          <td colspan="2">用户登陆</td>
        </tr>
        <tr>
          <td>用户名：</td>
          <td><input type="text" name="id" value="${person.id}"></td>
        </tr>
        <tr>
          <td>密&nbsp;&nbsp;码：</td>
          <td><input type="password" name="password" value="${person.password}"></td>
        </tr>
        <tr>
          <td colspan="2">
            <input type="submit" value="登陆">
            <input type="reset" value="重置">
          </td>
        </tr>
      </table>
    </form>
</center>
</body>
</html>