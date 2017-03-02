public class three {
	
	public static void main(String[] args) {
		String str = "Mr John Smith    ";
		char[] c = str.toCharArray();
		replaceSpaces(c, 13);
		System.out.println(c);
	}
	
	public static void replaceSpaces(char[] str, int trueLength) {
		int spaceCount = 0, index, i = 0;
		for (i = 0; i < trueLength; i++) {
			if (str[i] == ' ') {
				spaceCount++;
			}
		}
		index = trueLength + spaceCount * 2;
		if (trueLength < str.length) str[trueLength] = '\0'; // End array
		for (i = trueLength - 1; i >= 0; i--) {
			if (str[i] == ' ') {
				str[index - 1] = '0';
				str[index - 2] = '2';
				str[index - 3] = '%';
				index -=3;
			} else {
				str[index - 1] = str[i];
				index--;
			}
		}
	}
}