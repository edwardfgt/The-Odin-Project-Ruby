# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  matches = {}
  dictionary.each do |word|
    if string.downcase.include? word
      matches[word] = string.downcase.scan(/(?=#{word})/).count
    end
  end
  matches
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)