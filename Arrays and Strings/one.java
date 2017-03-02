public class one {
	
	public static void main(String[] args) {
		String s = "Hello, World";
		String t = "  ";
		String u = "ritmo dela";
		printString(s);
		printString(t);
		printString(u);
	}
	
	public static void printString(String s) {
		System.out.println(s + " being a unique string is " + isUniqueChars(s));
	}
	
	public static boolean isUniqueChars(String str) {
		if(str.length() > 128) return false;
		
		boolean[] char_set = new boolean[128];
		for (int i = 0; i < str.length(); i++) {
			int val = str.charAt(i);
			System.out.println(val);
			if (char_set[val]) { // Already found this char in string
				return false;
			}
			char_set[val] = true;
		}
		return true;
	}
}