# puts "Please enter your name"
# name = gets.chomp
# puts "Hello, #{name}! I'm Ruby!"

class Palindrome

  def isPalindrome?(name)
    if name.to_s.empty?
      # It's nil or empty
      # raise("Inputted object is a nil or empty string")
      return false
    end
    name.downcase!
    orig = name.dup
    name.reverse!
    (0...orig.size/2).each do |i|
      return false if orig[i] != name[i]
    end
    return true
  end
end

palindrome = Palindrome.new
pp palindrome.isPalindrome?("")
pp palindrome.isPalindrome?("Racecar")
pp palindrome.isPalindrome?('HALLAH')
pp palindrome.isPalindrome?('SUPBRO')
pp palindrome.isPalindrome?('HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH')
pp palindrome.isPalindrome?('AAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA')
String test = String.new
(0..1000).each do |n|
  test.insert(n, "A")
end
pp palindrome.isPalindrome?(test)