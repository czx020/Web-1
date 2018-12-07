<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加员工档案信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
<link href="css/css1.css" rel="stylesheet" type="text/css">
<script Language="JavaScript">
function check_input(theForm)
{
  if (theForm.employeeid.value.length != 6 || theForm.employeeid.value == "")
  {
    alert("员工编号必须为6位且不为空。");
    theForm.employeeid.focus();
    return (false);
  }  
  if (theForm.username.value == "")
  {
    alert("请输入姓名。");
    theForm.username.focus();
    return (false);
  }
  if (theForm.birthday.value == "")
  {
    alert("请输入出生日期。");
    theForm.birthday.focus();
    return (false);
  }
  if (theForm.nativeplace.value == "")
  {
    alert("请输入籍贯。");
    theForm.nativeplace.focus();
    return (false);
  }  
  if (theForm.identityid.value == "")
  {
    alert("请输入身份证号。");
    theForm.identityid.focus();
    return (false);
  }
    if (theForm.folk.value == "")
  {
    alert("请输入民族。");
    theForm.folk.focus();
    return (false);
  }
}
</script>
  </head>
  
  <body>
    	<div align="center" id="top">添加员工档案信息</div>

	<form name="form1" method="post" action="addemployee_action.jsp"
		onSubmit="return check_input(this) ">
		<table width="400" border="1" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td width="35%" height="30" align="right">员工编号：</td>
				<td align="left"><input name="employeeid" type="text"
					id="employeeid" size="10" maxlength="6"> <span
					class="font1"> * </span>
				</td>
			</tr>
			<tr>
				<td height="30" align="right">姓 名：</td>
				<td align="left"><input name="username" type="text"
					id="username" size="10" maxlength="10"> <span class="font1">
						* </span>
				</td>
			</tr>
			<tr>
				<td height="30" align="right">性 别：</td>
				<td align="left"><select name="sex" id="sex">
						<option value="男" selected>男</option>
						<option value="女">女</option>
				</select>
				</td>
			</tr>
			<tr>
				<td height="30" align="right">所属部门：</td>
				<td align="left"><select name="branch" id="branch">
						<option value="总经理室" selected>总经理室</option>
						<option value="副总经理室">副总经理室</option>
						<option value="销售部">销售部</option>
						<option value="生产部">生产部</option>
						<option value="研发部">研发部</option>
						<option value="采购部">采购部</option>
						<option value="财务部">财务部</option>
						<option value="人事部">人事部</option>
				</select></td>
			</tr>
			<tr>
				<td height="30" align="right">出生日期：</td>
				<td align="left"><input name="birthday" type="text"
					id="birthday" size="10" maxlength="10"> <span class="font1">
						* </span>
				</td>
			</tr>
			<tr>
				<td height="30" align="right">籍 贯：</td>
				<td align="left"><input name="nativeplace" type="text"
					id="nativeplace" size="15" maxlength="15"> <span
					class="font1"> * </span>
				</td>
			</tr>
			<tr>
				<td height="30" align="right">婚姻状况：</td>
				<td align="left"><select name="marriage" id="marriage">
						<option value="未婚" selected>未婚</option>
						<option value="已婚">已婚</option>
						<option value="丧偶">丧偶</option>
						<option value="离异">离异</option>
				</select></td>
			</tr>
			<tr>
				<td height="30" align="right">身份证号：</td>
				<td align="left"><input name="identityid" type="text"
					id="identityid" size="18" maxlength="18"> <span
					class="font1"> * </span>
				</td>
			</tr>
			<tr>
				<td height="30" align="right">政治面貌：</td>
				<td align="left"><select name="politics" id="politics">
						<option value="党员" selected>党员</option>
						<option value="团员">团员</option>
						<option value="群众">群众</option>
						<option value="其他">其他</option>
				</select></td>
			</tr>
			<tr>
				<td height="30" align="right">民 族：</td>
				<td align="left"><input name="folk" type="text" id="folk"
					size="10" maxlength="10"> <span class="font1"> * </span>
				</td>
			</tr>
			<tr>
				<td height="30" align="right">学 历：</td>
				<td align="left"><select name="education" id="education">
						<option value="初中">初中</option>
						<option value="高中">高中</option>
						<option value="中专">中专</option>
						<option value="专科">专科</option>
						<option value="本科" selected>本科</option>
						<option value="硕士">硕士</option>
						<option value="博士">博士</option>
				</select></td>
			</tr>
			<tr>
				<td height="30" align="right">专 业：</td>
				<td align="left"><input name="department" type="text"
					id="department" size="18" maxlength="18">
				</td>
			</tr>
			<tr>
				<td height="30" align="right">毕业日期：</td>
				<td align="left"><input name="graduatedate" type="text"
					id="graduatedate" size="10" maxlength="10">
				</td>
			</tr>
			<tr>
				<td height="30" align="right">毕业院校：</td>
				<td align="left"><input name="university" type="text"
					id="university" size="18" maxlength="18">
				</td>
			</tr>
			<tr>
				<td height="30" align="right">职 称：</td>
				<td align="left"><select name="position" id="position">
						<option value="助理工程师" selected>助理工程师</option>
						<option value="工程师">工程师</option>
						<option value="高级工程师">高级工程师</option>
						<option value="助理会计师">助理会计师</option>
						<option value="会计师">会计师</option>
						<option value="注册会计师">注册会计师</option>
						<option value="助理经济师">助理经济师</option>
						<option value="经济师">经济师</option>
						<option value="高级经济师">高级经济师</option>
						<option value="其他">其他</option>
				</select></td>
			</tr>
			<tr>
				<td height="30" align="right">在职情况：</td>
				<td align="left"><select name="incumbency" id="incumbency">
						<option value="在职" selected>在职</option>
						<option value="离职">离职</option>
						<option value="退休">退休</option>
						<option value="待聘">待聘</option>
						<option value="其他">其他</option>
				</select></td>
			</tr>
			<tr>
				<td height="30" align="right">用工形式：</td>
				<td align="left"><select name="incumbencytype"
					id="incumbencytype">
						<option value="正式工" selected>正式工</option>
						<option value="合同工">合同工</option>
						<option value="临时工">临时工</option>
						<option value="见习生">见习生</option>
						<option value="其他">其他</option>
				</select></td>
			</tr>
			<tr>
				<td height="30" align="right">个人简历：</td>
				<td align="left"><textarea name="resume" cols="30" rows="6"
						id="resume"></textarea>
				</td>
			</tr>
			<tr>
				<td height="30" colspan="2" align="center"><input type="submit"
					name="button" id="button" value="添加"> <input type="reset"
					name="button2" id="button2" value="取消">
				</td>
			</tr>
		</table>
	</form>
	<br>
  </body>
</html>
