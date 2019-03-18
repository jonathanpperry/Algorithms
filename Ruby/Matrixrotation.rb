require 'pp'

class Matrixrotation

  def testRotation?(origArray, rotatedArray)
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
    return arrayToRotate.transpose.reverse
  end

end

a = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
a_rot = [[3, 6, 9], [2, 5, 8], [1, 4, 7]]
b = [[2, 4], [1, 3]]
matrixclass = Matrixrotation.new
pp matrixclass.testRotation?(a, a_rot)
pp matrixclass.testRotation?(a, matrixclass.rotateCounterclockwise(a))
pp matrixclass.rotateCounterclockwise(b)


