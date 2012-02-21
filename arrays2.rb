# a little program to accept a list of words, sort them without using the sort method, and output them in alphabetical order 
j = 0
words = []
words2 = []
a_word = 'a' # dummy initialization to get into the until loop below
i = 0
puts "Type a word and press <Enter> (Enter a blank line to quit):" 
# Loop to accept an unspecified number of words-- creates original array
until a_word.empty?
  a_word = gets.chomp
  if a_word != ""
    words.push a_word
    i += 1
  end # end if
end # end until

while words.length > 0
  i = words.length - 1
  # I will sort by looking for the lowest value word in the original array and pushing it on to the new array
    a_word = words[0] # initialize with the first element in the array
    a_index = 0
    for j in 1..i 
      b_word = words[j] # assign  second element to a var	    
      if a_word.upcase > b_word.upcase  # compare the two words
        a_word = words[j]
        a_index = j  # variable so I can reference the words pushed onto the new array
      end  # end if
    end  # end for
    words2.push a_word  # push smallest word onto new array
    words.delete_at(a_index) # delete the lowest element in the original array
    i -= words.length 
end # end while
puts words2
