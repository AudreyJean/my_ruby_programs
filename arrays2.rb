# a little program to accept a list of words, sort them without using the sort method, and output them in alphabetical order 
j = 0
words = []
words2 = []
a_word = ' '
b=word = ''
i = 0
puts "Type a word and press <Enter>:"
# Loop to accept an unspecified number of words-- creates original array
while a_word != ""
  a_word = gets.chomp
  if a_word != ""
    words.push a_word
    i = i + 1
  end
end

i = words.length
until  i == words2.length
  # I will sort by looking for the lowest value word in the original array and pushing it on to the new array
  # i = words.length
  a_word = words[0] # initialize with the first element in the array
  a_index = 0
  for j in 1..i
    puts "debug line " + a_word
    puts "debug line " + words[j]
    if a_word > words[j]  # compare the two words
      a_word = words[j]
      a_index = j
    end  # end if
  end  # end for
  words2.push a_word  # push smallest word onto new array
  words.delete_at(a_index) # delete the lowest element in the original array
end
puts ""
puts words2