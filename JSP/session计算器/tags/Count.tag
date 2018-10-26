<%@ tag pageEncoding="utf-8"%>
<%@ tag import = "java.io.*" %>
<font size =4></font>
<%!
	int number = 0;
	File file = new File("count.txt");
	synchronized void countPeople(){
		if(!file.exists()){
			number++;
			try{ file.createNewFile();
				 FileOutputStream out = new FileOutputStream("C:\\MyEclipse10\\out\\WebRoot\\coun.txt");
				 DataOutputStream dataOut = new DataOutputStream(out);
				 dataOut.writeInt(number);
				 dataOut.close();
				 out.close();
		   }
			catch(IOException ee){}
		}
			
		else{
			try{
				 FileInputStream in = new FileInputStream("C:\\MyEclipse10\\out\\WebRoot\\coun.txt");
				 DataInputStream dataIn = new DataInputStream(in);
				 number = dataIn.readInt();
				 number++;
				 dataIn.close();
				 in.close();
				 FileOutputStream out = new FileOutputStream("C:\\MyEclipse10\\out\\WebRoot\\coun.txt");
				 DataOutputStream dataOut = new DataOutputStream(out);
				 dataOut.writeInt(number);
				 dataOut.close();
				 out.close();
				 }
			catch(IOException ee){}
			}
		}
%>
<%
	String str = (String)session.getAttribute("count");
	if(str == null){
		countPeople();
		String personCount = String.valueOf(number);
		session.setAttribute("count",personCount);
		}
 %>
 <p>你是第<%=(String)session.getAttribute("count") %>个访客！</p>
