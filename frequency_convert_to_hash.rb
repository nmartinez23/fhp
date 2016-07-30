# Given a string, convert it to an array and then count the frequency of each word.
# Return the key(word), value(frequency) pair as a Hash.

def word_freq(str)
  arr = str.downcase.split(' ')
  counts_hash = {}

  arr.each do |word|
    counts_hash[word] = arr.count(word)
  end
  counts_hash
end


word_freq("The dog fetched the stick")