# Given an array of length N, with integer values between 0 and N (not including 0 or N), return any integer that appears in the array more than once, i.e.

# [ 1, 2, 3, 3, 4 ] => 3
# [ 3, 1, 2, 2, 5, 5 ] => 2 or 5 (either is fine)
# [ 0, 1, 2 ] => invalid input (can’t have 0)


def find_dups(arr)
  arr = arr.sort
  return "invalid Input" if arr[0] == 0
  arr.each_with_index do |el, idx|
    if idx != arr.length-1
      return el if el == arr[idx+1]
    end

  end

end

find_dups([ 0, 1, 2 ])


# Given a string s, find the longest palindromic substring in s.

# Example:

# Input: "babad" Output: "bab" Note: "aba" is also a valid answer.

# Example: Input: "cbbd" Output: "bb"
# iterate over each index of string
#   if next idx and prev idx are same, 
#     if current len > max
#       change max to cur
    
#     check next and prev,
#   else not pal

def longest_pal(str)
  max = ""
  i = 0
  while i < str.length
    startidx = i - 1
    endidx = i + 1
    while startidx >= 0 and endidx < str.length
      puts "startidx is #{startidx}"
      puts "endidx is #{endidx}"
      if str[i] == str[startidx] and max.length <=2
        max = str[startidx..i]
      end
      if str[startidx] == str[endidx]
        if str[startidx..endidx].length > max.length
          puts "test is #{str[startidx..endidx]}"
          max = str[startidx..endidx]
        end
      end
        startidx -= 1
        endidx += 1
    end

    
    i += 1
  end

  max
end



longest_pal("cbbd")

# Part 1: Say that I gave you an array of length n, containing the numbers 1..n in jumbled order. "Sort" this array in O(n) time. You should be able to do this without looking at the input.

# Part 2: Say that I give you an array of length n with numbers in the range 1..N (N >= n). Sort this array in O(n + N) time. You may use O(N) memory.

# Part 3: Say I give you an array of n strings, each of length k. I claim that, using merge sort, you can sort this in O(knlog(n)), since comparing a pair of strings takes O(k) time.

# I want you to beat that. Sort the strings in O(kn). Hint: do not compare any two strings. You may assume all strings contain only lowercase letters a..z without whitespace or punctuation.
def pt1(arr)
  output = []
  arr.each do |el|
    output[el-1] = el
  end
  output.compact
end


pt1([7,2,1,4,3,9,5,8,6,64])