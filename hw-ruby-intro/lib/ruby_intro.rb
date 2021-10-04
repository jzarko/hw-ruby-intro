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

  arr.sort!
  sum = arr[-1] + arr[-2]
  return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
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
