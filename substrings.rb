dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring (string, dictionary)
  word_count = {}

  dictionary.each do |x|
    word = string.downcase.scan(x)
    if word.size > 0
      word_count[word[0].to_sym] = word.size
    end
  end
  return word_count
end

p substring("Howdy partner, sit down! How's it going?", dictionary)
