package util;
import java.text.SimpleDateFormat;
import java.util.Date;
public class GetDate {
	public String getNowTime(String dateformat){
		Date now = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat(dateformat);//可以方便地修改日期格式
		String hehe = dateFormat.format(now);
		return hehe;
		}
}
