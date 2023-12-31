
def substrings(word, dictionary)

  
    subs = Hash.new(0)
    
    
    # isolating each letter of the string
    word_arr = word.downcase!.split("").to_a
  
    # we need to try each combination of substrings, so nested loop
    word_arr.each_index do |start|
  
      word_arr.each_index do |finish|
        
        current_sub = word_arr[start..finish].join
  
        if dictionary.include?(current_sub) == true
          
          subs[current_sub] += 1
        end
      end
  
    end
  
    return subs
  

  
 

=begin

looking at other solutions 

- I could've utilized the .scan method
- I didn't need to do a loop within a loop to iterate through
- want to find other more efficient ways to do this next time

=end


end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Below", dictionary)
#  => {"below" => 1, "low" => 1 }

substrings("Howdy partner, sit down! How's it going?", dictionary)
#  => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
