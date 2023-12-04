
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


----------------------- from basic enumerable methods section

votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end
#=> {"Bob's Dirty Burger Shack"=>2, "St. Mark's Bistro"=>1}

=end


end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Below", dictionary)
#  => {"below" => 1, "low" => 1 }