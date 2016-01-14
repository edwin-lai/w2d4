def first_anagram?(word1, word2)
  anagram_list = word1.split("").permutation(word1.length)
  anagrams = anagram_list.map { |el| el.join }
  anagrams.include?(word2)
end

def second_anagram?(word1, word2)
  return false if word1.length != word2.length
  arr1 = word1.split("")
  arr2 = word2.split("")
  while arr1 & arr2 != []
    arr1.each_with_index do |char1, index1|
      arr2.each_with_index do |char2, index2|
        if char1 == char2
          arr1.delete_at(index1)
          arr2.delete_at(index2)
        end
      end
    end
  end
  return true if arr1.empty? && arr2.empty?
  false
end

def third_anagram?(word1, word2)
  word1.split("").sort == word2.split("").sort
end

def fourth_anagram?(word1, word2)
  letters = Hash.new(0)
  word1.each_char { |char| letters[char] += 1 }
  word2.each_char { |char| letters[char] -= 1 }
  return true if letters.values.all? { |el| el == 0}
  false
end