module FunWithStrings
  def palindrome?
    self.downcase.gsub(/\W+/, "") == self.downcase.gsub(/\W+/, "").reverse
  end
  def count_words
    words = Hash.new
    phrase = self.downcase.gsub(/(^\s+|\W$)/, "").scan(/\w+/)
    phrase.each do |word|
      if words.key? word
        words[word] += 1
      else
        words[word] = 1
      end
    end
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
