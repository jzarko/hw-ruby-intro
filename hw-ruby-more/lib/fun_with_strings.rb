module FunWithStrings
  def palindrome?
    # make the test strings valid
    origStringNonwordStripped = self.gsub(/\W/, "")     # = takes out any non alphanumeric chars
    origStringNonwordStripped = origStringNonwordStripped.downcase    # lowercases the string
    reversedString = origStringNonwordStripped.reverse                # reverses the string

    if origStringNonwordStripped == reversedString
      return true                                       # if a palin, return true
    else
      return false
    end

  end

  def count_words
    words = {}        # create a hash table

    # modify the string to fit requirements of only alphanumerics
    origStringNwdStrpd = self.gsub(/[^A-Za-z0-9 ]/, "")
    origStringNwdStrpd = origStringNwdStrpd.downcase      # lowercase the string

    # split the string up into words
    origStringNwdStrpd.split(' ').each { |n| 
    wordCount = 1
    if words.key?(n)                          # if the word is in the hash table, increase its count by 1
      wordCount += words.fetch(n)
      words.store(n, wordCount)
    else                                      # if not, then store the new word in the hash table
      words.store(n, 1)
    end
    }

    return words
  end


  def anagram_groups
    # your code here
  end
end


# make all the above functions available as instance methods on Strings:
class String
  include FunWithStrings  
end
