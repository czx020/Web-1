<%@ tag pageEncoding="utf-8"%>
<p>这是一个Tag文件，计算100以内的偶数之和:
<% int sum = 0,i = 1;
	for(i = 1;i<=100;i++){
		if(i%2==0)
		sum = sum + i;
	}
	out.print(sum);
%>