package util;

import javax.servlet.http.HttpServletRequest;


public class ChangeToGBK {
public String change(String attr,HttpServletRequest request) throws Exception
{   String qValue;
	qValue = request.getParameter(attr);
	byte[] data = qValue.getBytes("ISO8859-1");
	qValue = new String(data, "GBK");
	return qValue;
}
}
