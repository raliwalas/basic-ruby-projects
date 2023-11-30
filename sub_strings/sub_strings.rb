
def substrings(word, dictionary)

=begin

---- pseudocode ----

    break up the characters of the word given
        - word.split("").to_a
        - make all of the words lowercase .lowercase! ^ in this command too?
        - word.lowercase.split("").to_a ?? does that work?


   word.each_index do |i|
    - dictionary.include?(word[i])
    - see if there are any 1 letter strings


    same thing but with ranges
        - maybe need a loop within a loop to iterate through all the letters?
            words.all then words.any ???

        - word[0..1], word[0..2], word[0..3], until get to full word 
            - word.length()
        - word[1..2], word[1..3], word[1..4] until word.length()
        - word[2..3], word[2..4] etc etc
    
    if dictionary.include(word[whatever range]) == true
        - are there other methods instead of include? that would work?
        
        - save that substring (word[whatever range]) as a key
        - value is the counter -- make sure that it doesn't make a new key if already exists
    

    - returns a hash

=end

end