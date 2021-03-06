# Modify the word_sizes method from the previous exercise to exclude non-letters
# when determining word size. For instance, the length of "it's" is 3, not 4.

# algorithm:
# clean the string after splitting it

def word_sizes(string)
  count_hash = Hash.new(0)
  words = string.split
  cleaned_words = words.map do |word|
    word.delete('^A-Za-z')
  end
  sizes = cleaned_words.map(&:size)
  sizes.each do |size|
    count_hash[size] += 1
  end
  count_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
