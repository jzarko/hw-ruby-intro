module FunWithStrings
  def palindrome?
    def testPalindrome(string)

    end
    # def testPal(string)
    #   puts "Hello"
    # end

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

  def initialize(inputStr)
    @testString = inputStr
  end
  
  def testString
    @string
  end

  def testString=( value )
    @string = value
  end

end
