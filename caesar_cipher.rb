
def caesar_cipher(phrase, shift_by)

    words = phrase.split(" ").to_a
    chars = phrase.split("").to_a
  
    #puts "original chars: #{chars}"
    
    lowercase = ("a".."z").to_a
    uppercase = ("A".."Z").to_a
  
    chars.each_index do |i|
  
  
      if lowercase.include?(chars[i]) == true
        
        old_pos = lowercase.find_index(chars[i])
        
        new_pos = old_pos + shift_by
  
        if new_pos > 25
          new_pos = new_pos - 26
        end
  
        chars[i] = lowercase[new_pos]
        
      end
  
  
      if uppercase.include?(chars[i]) == true
  
        old_pos = uppercase.find_index(chars[i])
  
        new_pos = old_pos + shift_by
  
        if new_pos > 25
          new_pos = new_pos - 26
        end
  
        chars[i] = uppercase[new_pos]
  
      end
  
      phrase = chars.join   
  
    end
  
  
    #puts "ciphered chars: #{chars}"
  
    return phrase
  
end
  
  
  #caesar_cipher("abc def!", 1)
  # => bcd efg!
  
  caesar_cipher("abc Def!", 1)
  # => bcd Efg!
  
  caesar_cipher("What a string!", 5)
  # => "Bmfy f xywnsl!"