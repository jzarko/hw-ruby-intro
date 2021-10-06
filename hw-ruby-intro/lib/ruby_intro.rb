# When done, submit this entire file to the autograder.

# -------------------------------------------------------   Part 1   -------------------------------------------------------

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
# --------------------------------------------------------------------------------------------------------------------------

# -------------------------------------------------------   Part 2   -------------------------------------------------------

# Takes an input name and returns a concatenated greeting + name
def hello(name)
  greeting = "Hello, " + name
  return greeting
end

# Take the first character of a string and return true if its a consanant
# Check the character against all invalid possible charaters to see if its valid
def starts_with_consonant? s
  if s.empty?         # case of empty string
    return false
  end 

  testChar = s[0]
  invalidChars = "aeiouAEIOU!@#$%^&*()-_=+\'\"[]{}\\\|:;?/.,<>`~ 123456789"   # try messing around with s.match?()
  if invalidChars.include?(testChar)
    return false
  end

  return true   # returns true if testChar is not invalid or empty
end

# Take a binary string and see if it is a multiple of 4. If it is, return true
# If the string is not a binary number, then return false
def binary_multiple_of_4? s
  # case if s is an empty string
  if s == ""
    return false
  end 

  # if s isnt a binary value
  if s.match?(/[^01]/) == true
    return false
  end

  # if s is a binary value, convert it to decimal then see if s % 4 has a remainder
  decimalVal = s.to_i(2)
  if decimalVal % 4 == 0
    return true
  else
    return false
  end
end
# --------------------------------------------------------------------------------------------------------------------------

# -------------------------------------------------------   Part 3   -------------------------------------------------------

class BookInStock

  def initialize(isbn, price)
    # raise errors if invalid data is entered
    raise ArgumentError.new(    # error if price <= 0
      "Price <= 0"
    ) if price <= 0
    raise ArgumentError.new(    # error if isbn = ""
      "Invalid ISBN"
    ) if isbn.empty?
    @isbn = isbn
    @price = price
  end

  def isbn                  # Getter
    @isbn
  end

  def isbn=( value )        # Setter
    @isbn = value
  end

  def price                 # Getter
    @price
  end

  def price=( value )       # Setter
    @price = value
  end

  def price_as_string()
    # use special formatting with the % sign to limit price to 2 decimal places
    return "$%.2f" % price
  end

end

# --------------------------------------------------------------------------------------------------------------------------
