class Matrixrotation

  a = [[1, 2], [3, 4]]
  b = [[2, 4], [1, 3]]
  a.each do |sub|
    sub.each do |int|
      puts int
    end
  end
# Output:
#   1
#   2
#   3
#   4

end