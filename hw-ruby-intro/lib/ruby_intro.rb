# When done, submit this entire file to the autograder.

# Part 1

# Use the each method to easily add the current number to the total
# Return the total sum
def sum arr
  total = 0
  arr.each { |currNum| total += currNum }

  return total
end

# Run through an array twice and pick the biggest num the first time and the second biggest the second time
# Return the sum of the two biggest nums
def max_2_sum arr
  arrLen = arr.length
  sum = 0

  if arr.empty? == true     # if empty array, return 0
    return sum
  end
  if arrLen == 1          # if array only has 1 elem, return it
    return arr[0]
  end

  arr.sort!                 # if array has 2+ elements, sort them...
  sum = arr[-1] + arr[-2]   # and return the sum of the last 2
  return sum
end

# Check if elements a + b = n for any elements in the array
# Return a bool T/F if a + b = n is in the array
def sum_to_n? arr, n
  arrLength = arr.length
  sum = 0

  # if the array has < 2 elements, then sum a + b = n is impossible
  if arrLength < 2
    return false
  end

  # check each element against every other one
  # you can narrow the checking range with every loop through the array
  #     because you would just be re-checking values pointlesslyarrLength = arr.length
  for i in 0..arrLength-2 do
    for j in i+1..arrLength-1 do
      sum = arr[i] + arr[j]
      if sum == n
        return true
      end
    end
  end

  return false    # if the array is not empty and none of the elems sum to 0, return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
