module FunWithStrings
  def palindrome?
    # make the test strings valid
    origStringNonwordStripped = self.gsub(/\W/, "")
    origStringNonwordStripped = origStringNonwordStripped.downcase
    reversedString = origStringNonwordStripped.reverse

    if origStringNonwordStripped == reversedString
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
end
