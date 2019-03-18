# puts "Please enter your name"
# name = gets.chomp
# puts "Hello, #{name}! I'm Ruby!"

class Palindrome

  def ispalindrome?(name)
    orig = name.dup
    reverse = name.reverse!
    (0...orig.size).each do |i|
      return false if orig[i] != reverse[i]
    end
    return true
  end
end

palindrome = Palindrome.new
puts palindrome.ispalindrome?('HALLAH')
puts palindrome.ispalindrome?('SUPBRO')
puts palindrome.ispalindrome?('SUP')
puts palindrome.ispalindrome?('HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH')
