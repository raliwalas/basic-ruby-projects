def bubble_sort(arr)

# do the bubble sort unless is_sorted? == true

# array[0], array[3] = array[3], array[0]
# from https://coderwall.com/p/be_1va/swap-two-elements-of-an-array-in-ruby 

end


=begin

is_sorted? checks whether is array is sorted or now and returns a boolean value

If the last element of the array is not the maximum within the array, we automatically know that
the array is not sorted. If it is, then remove that value and check that the new last value is the maximum. 

If we end up with an array of length 1, we know the list was sorted, or the input was only length 1.
=end

def is_sorted?(arr)

sorted = false

arr.each_with_index do |num, index|

    if arr.last == arr.max
        arr.pop
    end
    
    if arr.length == 1
        sorted = true
    else 
        sorted = false
    end 
    
    return sorted  

end
end

#is_sorted?([1,2,3])
#is_sorted?([5,3,4,6,10])
#is_sorted?([4,3,78,2,0,2])

#bubble_sort([1,2,3])
#bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]