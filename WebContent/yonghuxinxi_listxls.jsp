<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="yonghuxinxihsgb" scope="page" class="com.bean.YonghuxinxiBean" /> 

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=yonghuxinxi.xls");
%>
<html>
  <head>
    <title>�û���Ϣ</title>
  </head>

  <body >
 <%
			String sql="select * from yonghuxinxi  order by id desc";

			
			%>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td align='center'>�û��ǳ�</td>
	
    <td width="120" align="center" bgcolor="CCFFFF">����ʱ��</td>
    
  </tr>
   <%		
				List pagelist3=yonghuxinxihsgb.getAllYonghuxinxi(9);
			if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i);
			%>
  <tr>
    <td  align="center"><%=i+1 %></td>
    <td>${u.yonghucheng}</td>
	
	
   
  </tr>
  	<%
  }}
   %>
   
</table>
<br>
  </body>
</html>
