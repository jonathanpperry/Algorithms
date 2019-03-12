# puts "Please enter your name"
# name = gets.chomp
# puts "Hello, #{name}! I'm Ruby!"

def palindrome?(name)
  orig = name.dup
  reverse = name.reverse!
  (0...orig.size).each do |i|
    if orig[i] != reverse[i]
      return false
    end
  end
  return true
end

puts palindrome?('HALLAH')
puts palindrome?('SUPBRO')
puts palindrome?('SUP')
puts palindrome?('HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH')
