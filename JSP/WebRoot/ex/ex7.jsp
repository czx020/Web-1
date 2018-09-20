<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>三角形</title>

</head>

<body>
	<table width="318" border="1" align="center">
		<tr>
			<td height="30" colspan="2" align="center">请输入三角形的三边a，b，c的长度</td>
		</tr>
		<tr>
			<td width="70%" height="30">请输入三角形a边长度</td>
			<td height="30"><input type="text" name="a">
			</td>
		</tr>
		<tr>
			<td width="70%" height="30">请输入三角形b边长度</td>
			<td height="30"><input type="text" name="b">
			</td>
		</tr>
		<tr>
			<td width="70%" height="30">请输入三角形c边长度</td>
			<td height="30"><input type="text" name="c">
			</td>
		</tr>
		<tr>
			<td height="30" colspan="2">
			<input type="submit" name="sumbit" value="提交"> 
			<input type="reset" name="button2" value="重置">
			</td>
		</tr>
	</table>
		
	<% //获取用户提交的数据 
	   String string_a = request.getParameter("a"),
              string_b = request.getParameter("b"),
              string_c = request.getParameter("c");
       	double a=0, b=0, c=0;

   	//判断字符串是否是空对象，如果是空对象就初始化
       	if(string_a==null){
       	   string_a="0";
       	   string_b="0";
       	   string_c="0";
       	   }
    //求出边长，计算面积
   		try{a=Double.valueOf(string_a).doubleValue();
   			b=Double.valueOf(string_b).doubleValue();
   			b=Double.valueOf(string_c).doubleValue();
        if (a+b>c&&a+c>b&&b+c>a) {
          double p = (a+b+c)/2.0;
          double miannji = Math.sqrt(p*(p-a)*(p-b)*(p-c));
          out.print("<br>"+"三角形面积：" + miannji);
        }
        else
          out.print("<br>"+"你输入的三边不能构成三角形");
        }
        catch(NumberFormatException e){
          out.print("<br>"+"请输入数字字符");
        }
        %>
</body>
</html>
