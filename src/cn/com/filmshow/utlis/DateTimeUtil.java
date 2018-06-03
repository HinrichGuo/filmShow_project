package cn.com.filmshow.utlis;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateTimeUtil {

	/**
	 * 
	 * @param format
	 *            ��������ʱ�����ĸ�ʽ
	 * @return ��ǰ����
	 */
	public static String now(String format) {
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		return sdf.format(new Date());
	}

	public static String now() {
		return now("yyyy-MM-dd HH:mm:ss");
	}

	/** 
     * ����ʱ����������������Сʱ���ٷֶ����� 
     * @param str1 ʱ����� 1 ��ʽ��1990-01-01 12:00:00 
     * @param str2 ʱ����� 2 ��ʽ��2009-01-01 12:00:00 
     * @return String ����ֵΪ��xx��xxСʱxx��xx�� 
     */  
	public static String getDistanceTime(String str1, String str2) {
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date one;
		Date two;
		long day = 0;
		long hour = 0;
		long min = 0;
		long sec = 0;
		try {
			one = df.parse(str1);
			two = df.parse(str2);
			long time1 = one.getTime();
			long time2 = two.getTime();
			long diff;
			if (time1 < time2) {
				diff = time2 - time1;
			} else {
				diff = time1 - time2;
			}
			day = diff / (24 * 60 * 60 * 1000);
			hour = (diff / (60 * 60 * 1000) - day * 24);
			min = ((diff / (60 * 1000)) - day * 24 * 60 - hour * 60);
			sec = (diff / 1000 - day * 24 * 60 * 60 - hour * 60 * 60 - min * 60);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return day + "��" + hour + "Сʱ" + min + "��" + sec + "��";
	}
}
