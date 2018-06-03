package cn.com.filmshow.utlis;

public class CommonUtil {

	// �ַ�������ת ���Ÿ������ַ��� ; �������÷�����չΪ������������
	public static String join(String[] arr, String demi) {
		if (arr.length == 0)
			return "";

		StringBuilder sb = new StringBuilder();

		for (int i = 0, len = arr.length; i < len; i++) {
			sb.append(arr[i]);
			if (i != len - 1)
				sb.append(demi);
		}
		return sb.toString();
	}

	// �ַ�������ת Ĭ�϶��Ÿ������ַ��� ; �������÷�����չΪ������������
	public static String join(String[] arr) {
		return join(arr, ",");
	}

}
