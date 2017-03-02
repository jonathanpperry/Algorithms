public class two {
	
	public static void main(String[] args) {
		String s = "Hello, World";
		String t = "Hlleo, World";
		printString(permutation(s, t));
	}
	
	public static void printString(boolean a) {
		if (a) {
			System.out.println("The strings are permutations");
		}
		else {
			System.out.println("The strings are not permutations");
		}
	}
	
	public static String sort(String s) {
		char[] content = s.toCharArray();
		java.util.Arrays.sort(content);
		return new String(content);
	}
	
	public static boolean permutation(String s, String t) {
		if(s.length() != t.length()) {
			return false;
		}
		return sort(s).equals(sort(t));
	}
}