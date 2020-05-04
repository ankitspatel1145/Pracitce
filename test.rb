# # Definition for a binary tree node.
# # class TreeNode
# #     attr_accessor :val, :left, :right
# #     def initialize(val)
# #         @val = val
# #         @left, @right = nil, nil
# #     end
# # end

# # @param {TreeNode} root
# # @return {Integer}
# def deepest_leaves_sum(root)
#   qu = [root]
#   stack = []
#   sum = 0

#   while qu.length
#     node = qu.shift
#     qu.push(node.left) if node.left
#     qu.push(node.right) if node.right
#     stack.unshift(node)
#   end
  
#   stack.each do |node|
#     break if node.left or node.right
#     sum += node.val
#   end

#   sum
    
# end

# Standard BFS
# create a queue, starting with the rootnode
#   add in all children
#   add removed item to history stack

#   once queue is empty, 
#     remove items off top of stack and add until you find node with children




# # [[1 2 3]
# # [4 5 6]
# # [7 8 0]]

# # 1 6 3
# # 8 7 5
# # 4 0 2
# while q.length > 0
#     nextQue = [];
#     len = q.length
#     len.times {
#         curr = q.pop
#         return count if curr = result;
#         find all viables move
#         make the move
#         check the new board against a hash or set
#         add to nextQue
#     }
#     increase the level
#     q = nextQue;







# Triple Maximum
# Given an array of integers, find the largest product yielded from three of the integers.

# Examples:

# maxOfThree([10, 3, 5, 6, 20]) // Output: 1200. Multiply 10, 6, 20

# maxOfThree([-10, -3, -5, -6, -20]) // Output: -90

# maxOfThree([1, -4, 3, -6, 7, 0]) // Output: 168

max = 0
iterate over 1st index
  itereate over 2nd index
    itereate over 3 index
      replace max if product is > max

max


def trip_max(arr)
  max = arr[0]* arr[1]* arr[2]

  idx1 = 0
  while idx1 < arr.length
    idx2 = idx1 + 1
    while idx2 < arr.length
      idx3 = idx2 + 1
      while idx3 < arr.length

        test = arr[idx1]*arr[idx2]*arr[idx3]
        if test > max
          max = test
        end
        idx3 += 1
      end
      idx2 += 1
    end
    idx1 += 1
  end
  max
end

# maxOfThree([10, 3, 5, 6, 20]) // Output: 1200. Multiply 10, 6, 20

# maxOfThree([-10, -3, -5, -6, -20]) // Output: -90
              -20 -10 -6  -5  -3
# maxOfThree([1, -4, 3, -6, 7, 0]) // Output: 168
              -6, -4, -2, 0, 1, 3, 7
              [-8,-1, 5,6,7 ]
               [-8,-7, 5,6,7 ]

sort array asc
  if all nums +, take the last 3
  if all nums -, take the fist 3



  

  if even num of -, take 2 smallest, time largest


def trip_max2(arr) 
  arr.sort!


  
  if arr.all{|x| x > 0} 
    return arr[-1]* arr[-2]* arr[-3]
  end


end
