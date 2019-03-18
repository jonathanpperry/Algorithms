require 'pp'

class Matrixrotation

  def all_elements_arrays_of_same_size?(a)
    a.all? { |e| e.class==Array } && a.map(&:size).uniq.size == 1
  end

  def testRotation?(origArray, rotatedArray)
    if !all_elements_arrays_of_same_size?(origArray)
      abort("Inputted object is not an matrix")
    end
    Integer n = origArray.length # n=3
    i=0
    origArray.each do |array|
      j=0
      array.each do |currElement|
        # puts 'i is ' + i.to_s + ', j is ' + j.to_s
        if currElement != rotatedArray[n-1-j][i]
          return false
        end
        j+=1
      end
      i+=1
    end
    return true
  end

  def rotateCounterclockwise(arrayToRotate)
    # Implementation of the counter-clockwise rotation
    if !all_elements_arrays_of_same_size?(arrayToRotate)
      abort("Inputted object is not an matrix")
    end
    return arrayToRotate.transpose.reverse
  end

end

a = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
a_rot = [[3, 6, 9], [2, 5, 8], [1, 4, 7]]
b = [[2, 4], [1, 3]]
c = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]
c_rot = [[4, 8, 12, 16], [3, 7, 11, 15], [2, 6, 10, 14], [1, 5, 9, 13]]
matrixclass = Matrixrotation.new
pp matrixclass.rotateCounterclockwise(b)
pp matrixclass.testRotation?(a, a_rot)
pp matrixclass.testRotation?(a, matrixclass.rotateCounterclockwise(a))
pp matrixclass.testRotation?(c, c_rot)
pp matrixclass.testRotation?(b, b)