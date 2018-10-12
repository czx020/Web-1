<%@ tag pageEncoding="utf-8"%>
<h4>调用tag 计算三角形面积</h4>
<%@ attribute name = "sizeA" required="true"%>"
<%@ attribute name = "sizeB" required="true"%>"
<%@ attribute name = "sizeC" required="true"%>"
<%!
	public String getArea(double a,double b,double c){
		if( a+b > c && a + c > b && c + b > a){
			double p = (a+b+c)/2.0;
            double area = Math.sqrt(p*(p-a)*(p-b)*(p-c));
            return"<br>三角形面积:"+area;
            }
        else
           return("<br>"+a+","+b+","+"c"+"不能构成三角形，无法计算面积");
      }
%>
<%
   out.println("<br>JSP 页面传过来的三边："+"sizeA"+"sizeB"+"sizeC");
   	double a = Double.parseDouble(sizeA);
   	double b = Double.parseDouble(sizeB);
   	double c = Double.parseDouble(sizeC);
   	out.println(getArea(a,b,c));
%>   
		