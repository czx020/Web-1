package mybean;
import java.util.*;
public class CodeConv {
	public CodeConv(){}
	
	public String toUTF8(String strvalue) 
	{
        try 
		{
            if (strvalue == null) 
			{
                return "";
            } 
			else 
			{
                strvalue = new String(strvalue.getBytes("ISO-8859-1"), "UTF-8");
                return strvalue;
            }
        } 
		catch (Exception e) 
		{
            return "";
        }
    }
}
