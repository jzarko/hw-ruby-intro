module FunWithStrings

  String#downcase
  String#reverse

  def palindrome?
    # puts "Hello 2"
    # def testPalindrome(string)
    #   print "ORIGINAL: #{string}"
    #   string.downcase
    #   string.reverse
    #   print "NEW:      #{string}"
    # end
    testString.downcase
    testPalindrome = testString
    testPalindrome.reverse
    if testString == testPalindrome
      return true
    else
      return false
    end

  end
  def count_words
    # your code here
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
  attr_reader :testString
end

# def initialize(inputStr)
  #   @testString = inputStr
  # end

# def testString
  #   @string
  # end

  # def testString=( value )
  #   @string = value
  # end
  