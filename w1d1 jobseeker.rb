
# In a 2 dimensional array grid, each value grid[i][j] represents the height of a building located there. We are allowed to increase the height of any number of buildings, by any amount (the amounts can be different for different buildings). Height 0 is considered to be a building as well.

# At the end, the "skyline" when viewed from all four directions of the grid, i.e. top, bottom, left, and right, must be the same as the skyline of the original grid. A city's skyline is the outer contour of the rectangles formed by all the buildings when viewed from a distance. See the following example.

# What is the maximum total sum that the height of the buildings can be increased?

# Example
# Input: grid = [[3,0,8,4],[2,4,5,7],[9,2,6,3],[0,3,1,0]]
# Output: 35



#  [[3,0,8,4]
#  ,[2,4,5,7]
#  ,[9,2,6,3]
#  ,[0,3,1,0]]


#  5 4 0 3   12
#  5 0 2 0   7
#  0 2 2 4   8
#  3 0 2 3   8

def testfun(mat)
  output = 0
  col_max = []
  i = 0
  while i < mat[0].length
    max = 0
    mat.each do |arr|
      if arr[i] > max
        max = arr[i]
      end
    end
    col_max << max
    i+=1
  end

  mat.each_with_index do |arr, row|
    arr.each_with_index do |el, col|
      if el != mat[row].max or el != col_max[col]
        if col_max[col] > mat[row].max
          output += (mat[row].max - el)
        else
          output += (col_max[col] - el)
        end
      end
    end
  end
  output
end
test = [[3,0,8,4],[2,4,5,7],[9,2,6,3],[0,3,1,0]]
testfun(test)