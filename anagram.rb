arr = IO.readlines("enable.txt")

def anagrams(word)
  anaGs = []
  origWordHash = wordHash(word)
  arr = IO.readlines("enable.txt")
  arr.each do |line|
    if wordHash(line.chomp) == origWordHash
      anaGs.push(line.chomp)
    end
  end
  return anaGs
end

def wordHash(word)
  hash = {}
  word.split('').uniq.each do |letter|
    hash[letter] = word.count(letter)
  end
  return hash
end
#puts arr[106].split('')
#puts arr[106].split('').count("a")

myWord = arr[106].chomp
print anagrams("loot")