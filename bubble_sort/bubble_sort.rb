

=begin
----brainstorming-----

n = arr.length

for k in 1..n do

find the biggest element
find the index of the biggest element

if the max index != n
    swap with the neighbor
end

then, decrease n 

n-=1 

i dont think i need to make it n - k 



=end

# def bubble_sort(arr)

#   answer = is_sorted?(arr)

#   #doing -1 because i want to go from 0..n in for loop
#   #k = 1

#   until answer == true do 

#     # n is the number of elements in the array
#     # -1 to go from 0 to last element, not 1 to n -1
#     n = arr.length - 1

#     # k is the number of iterations 
#     for k in 0..n do

#       max = arr[0..n].max
#       max_index = arr.find_index(max).to_i

#       puts "n #{n}"
#       puts "k #{k}"
#       puts "max: #{max}"
#       puts "max_index: #{max_index}"
#       puts 
#       puts arr.inspect
    
#       if max_index != n
#         neighbor = max_index + 1
#         # if the largest number is not at the end of the array, swap it with it's neighbor
#         arr[max_index], arr[neighbor] = arr[neighbor], arr[max_index]
#       #else 
#         #n-=1
#       end

#       if max_index == n
#         n -= 1
#         puts "here"
#       end

#       if is_sorted?(arr) == true
#         break
#       end

#       puts "----"
    
#     end

#     answer = is_sorted?(arr)

#   end

#   puts " HELLOOOO "
#   puts arr.inspect

# end


=begin

is_sorted? checks whether an is array is sorted or not and returns a boolean value

If the last element of the array is not the maximum within the array, we automatically know that
the array is not sorted. If it is, then remove that value and check that the new last value is the maximum. 

If we end up with an array of length 1, we know the list was sorted, or the input was only length 1.
=end

def is_sorted?(arr)

copy = []

# using clone because copy = arr will cause changes to the original arr
copy = arr.clone

sorted = false

copy.each_with_index do |num, index|

    #dups = arr.count(num)

    #if 


    if copy.last == copy.max
        copy.delete(copy.max)
        puts copy.inspect

    end
    
    if copy.length == 1
        sorted = true
    else 
        sorted = false
    end 

end

    puts sorted  
end

#is_sorted?([1,2,3])
#is_sorted?([5,3,4,6,10])
#is_sorted?([4,3,78,2,0,2])
is_sorted?([0,2,2,3,4,78])

#bubble_sort([3,4,1])
#bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]
