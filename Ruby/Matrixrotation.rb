require 'pp'

class Matrixrotation

  a = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  a_rot = [[3, 6, 9], [2, 5, 8], [1, 4, 7]]
  b = [[2, 4], [1, 3]]
  Integer n = a.length # n=3
  i=0, j=0

  pp a.transpose.reverse

  a.each do |array|
    array.each do |currElement|
      puts 'i is ' + i.to_s + ', j is ' + j.to_s
      # if currElement == a_rot[n-1-j, i]
      #   puts "Hello, world!"
      end
      ++j
    end
    ++i
  end
      # puts 'i is ' + i.to_s + ' and j is ' + j.to_s
      # if a[i, j] != b[n-1-j, i]
      #   puts 'failed'
      # end
      # puts a[i, j]
