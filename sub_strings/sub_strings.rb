
def substrings(word, dictionary)

    #not counted
    subs = Array.new
  
    # will be final returned hash
    substrings_counted = Hash.new
    
    # isolating each letter of the string
    word_arr = word.downcase!.split("").to_a
  
    # we need to try each combination of substrings, so nested loop
    word_arr.each_index do |start|
  
      word_arr.each_index do |finish|
        
        current_sub = word_arr[start..finish].join
  
        if dictionary.include?(current_sub) == true
          
          subs.push(current_sub)
        end
      end
  
      puts "substrings: #{subs}"
    end
  
   
  
=begin
  
  
----------------------- from basic enumerable methods section

votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

votes.reduce(Hash.new(0)) do |result, vote|
result[vote] += 1
result
end
#=> {"Bob's Dirty Burger Shack"=>2, "St. Mark's Bistro"=>1}

--------------------------

word.each_index do |start|    

    word.each_index do |finish|

        if dictionary.include?(word[start..finish]) == true

            puts word[start..finish]

        else
            puts "nope"
        end
    end
end

---- pseudocode ----

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
  

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Below", dictionary)
#  => {"below" => 1, "low" => 1 }