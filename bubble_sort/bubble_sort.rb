def bubble_sort(arr)
  
  answer = is_sorted?(arr)

  # n is the number of elements in the array
  # -1 to go from 0 to last element, not 1 to n -1
  # this stays out of the while loop because we change the n inside the for loop 
  n = arr.length - 1

  while answer == false
    
    # check answer status after for loop is done each time
    answer = is_sorted?(arr)
    
    
    for k in 0..n do
  
      max = arr[0..n].max
      max_index = arr.find_index(max).to_i
  
      if max_index != n
        neighbor = max_index + 1
        # if the largest number is not at the end of the array, swap it with it's neighbor
        arr[max_index], arr[neighbor] = arr[neighbor], arr[max_index]
      end

      # if the max number is in the last position, we want to check 0..n-1 in the next iteration
      if max_index == n
        n -= 1
      end
    end   
  end 

  return arr.inspect

end


=begin

is_sorted? checks whether an is array is sorted or not and returns a boolean value

It iterates through the array and checks if it's neighbor to its right is greater or not.
If it is greater, we add 1 to the counter.
If the counter remains at 0, we know that the list is sorted
=end

def is_sorted?(arr)

  copy = arr.clone
  
  count = 0
  add = 0

  copy.each_with_index do |num, index|


    if (num > copy[index+1].to_i) == true
      add = 1
    else
      add = 0
    end

    if (index+1) == copy.length
      break
    end

    count = count + add

  end 

  #puts count

  if count == 0
    sorted = true
  elsif count > 0
    sorted = false
  end

  return sorted
end

#is_sorted?([2,1,1,3,5])
#is_sorted?([1,1,1,2,2,3,3,4,5,5])
#is_sorted?([4,3,78,2,0,2])
# is_sorted?([0,2,2,3,4,78])
#tester = is_sorted?([1,1,1,2,2,3,3,4,5,5])
#puts tester

# tester = is_sorted?([3,4,1])
# puts tester

#bubble_sort([3,4,1])
#bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

tester = bubble_sort([4,3,78,2,0,2])
puts tester