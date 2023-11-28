
# also using replit.com and irb to run things

def caesar_cipher(phrase, shift_by)

    alphabet = ("a".."z").to_a

    return phrase    
    
=begin
- returns a string back
- make sure the capitalization stays the same
- make sure punctuation stays the same

phrase.each do |letter|

1. find desired letter in the alphabet array
    - original_position = alphabet.find_index(i)

2. find the new coded letter
    - new_position = original_position + shift_by is the new letter

3. if the new position is > 25
     new_position - 26 should loop it back correctly

4. replace the letter
    phrase[original_position] = alphabet[new_position]


=end
    


end

=begin
caesar_cipher("What a string!", 5)
=> "Bmfy f xywnsl!"
=end