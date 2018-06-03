package cn.com.filmshow.utlis;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @title IdCardUtil
 * @describe
 * @author zfc
 * @date 2017��5��17������12:20:58
 */
public class IdCardUtil {
	public static boolean isNumeric(String str){
		  for (int i = 0; i < str.length(); i++){
		   if (!Character.isLetterOrDigit((str.charAt(i)))){
			   return false;
		   }
		  }
		  return true;
	}
	 public static  int IdNOToAge(String IdNO){
	        int leh = IdNO.length();
	        String dates="";
	        SimpleDateFormat df = new SimpleDateFormat("yyyy");
	        String year=df.format(new Date());
	        int u=0;
	        if (leh == 18) {
	            dates = IdNO.substring(6, 10);
	            u =Integer.parseInt(year)-Integer.parseInt(dates);
	        }else{
	            dates = IdNO.substring(6, 8);
	            u =Integer.parseInt(year)-Integer.parseInt(dates);
	        }
	        return u;
	    }
	/**
	 * �����֤�Ż�ȡ��������
	 * 
	 * @param idCard�����֤��
	 * @return
	 */
	public static String GetDateFrom18IdCard(String idCard) {
		// �ж��Ƿ���15λ���֤��
		if (idCard.length() == 15) {
			idCard = IdCar15to18(idCard);
		}
		idCard = idCard.substring(6, 14);
		Date date = null;
		String dateStr = "";
		try {
			date = new SimpleDateFormat("yyyyMMdd").parse(idCard);
			dateStr = new SimpleDateFormat("yyyy-MM-dd").format(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		return dateStr;
	}

	/**
	 * 15λ���֤��ת18λ���֤��
	 * 
	 * @param idCard��15λ���֤��
	 * @return
	 */
	public static String IdCar15to18(String idCard) {
		idCard = idCard.trim();
		StringBuffer idCard18 = new StringBuffer(idCard);
		// ��Ȩ����
		// У����ֵ
		char[] checkBit = { '1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2' };
		int sum = 0;
		if (idCard != null && idCard.length() == 18) {
			idCard18.insert(6, "19");
			for (int index = 0; index < idCard18.length(); index++) {
				char c = idCard18.charAt(index);
				int ai = Integer.parseInt(new Character(c).toString());
				// ��Ȩ���ӵ��㷨
				int Wi = ((int) Math.pow(2, idCard18.length() - index)) % 11;
				sum = sum + ai * Wi;
			}
			int indexOfCheckBit = sum % 11; // ȡģ
			idCard18.append(checkBit[indexOfCheckBit]);

		}
		return idCard18.toString();
	}
}
