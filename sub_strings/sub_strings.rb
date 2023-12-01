
def substrings(word, dictionary)

    subs = Hash.new(0)
  
    
  
    word_arr = word.downcase!.split("").to_a
  
    word_arr.each_index do |start|
  
      #puts "start #{start} ------"
  
      word_arr.each_index do |finish|
  
        current_sub = word_arr[start..finish]
  
        #if dictionary.include?(current_sub) == true
  
         # puts current_sub
  
        #end
  
        #puts 
  
        puts current_sub
  
        #puts subs
  
        #puts "finish #{finish}"
  
        #puts word_arr[start..finish]
        
      end
  
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
  
  
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "be"]

substrings("Below", dictionary)
#  => { "below" => 1, "low" => 1 }