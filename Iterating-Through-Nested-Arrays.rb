# Iterating Through Nested Arrays 
# Display the cells in an Array of Arrays
# Traverse Array of Arrays to produce a single value
# Traverse Array of Arrays to produce a new nested data structures

# In the nest few labs, we're going to pick out three specific types of processing to practice 
# 1. Displaying the nested structur e
# 2. Transforming the nested structure into a new structure (a collection)
# 3. Transforming the nested structure into a result (a single thing, usually a number)

# Review Looping Through Arrays 
# Traverse an array using a while loop 
array = ["a", "b", "c", "d"]
count = 0
while count < array.length do 
    # code to work on the array would go here 
    count += 1 
end 

# If we wanted to output every element:
array = [100, 300, 50, 450]
count = 0

while count < array.length do
  puts array[count]
  count += 1
end 

# If we wanted to modify each element, we would change puts array[count]
array = [100, 300, 50, 450]
count = 0

while count < array.length do
  array[count] = array[count] * array[count]
  count += 1
end

array
 # => [10000, 90000, 2500, 202500]

 # IF we didn't want to modify the orginal, we call collect the result of each operaation in a new array 
 array = [100, 300, 50, 450]
results_array = []
count = 0

while count < array.length do 
    results_array << array[count] * array[count]
    count += 1 
end 
results_array 
# => [10000, 90000, 2500, 202500] 
# Above array is kep as is, but the square of each of its elements is added to results_array 

# If we wanted to derive a single value from an array of elements, 
# we modify a variable on each loop rather than adding to a new collection, 
# If we wanted to sum our array values 
array = [100, 300, 50, 450]
sum = 0
count = 0

while count < array.length do 
    sum = sum + array[count]
    count += 1 
end 

sum 
#=> 900 
# We've reduced the array down to a single value 
#-----------------------------------------------------------------------------------------------

# Looping Through Nested Arrays 
array_of_arrays = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
] 

# If we wanted to print out each nested array manually, we would write 
array_of_arrays[0]
 # => [1, 2, 3]
array_of_arrays[1]
 # => [4, 5, 6]
array_of_arrays[2]
 # => [7, 8, 9] 

 # If we wanted to print the elements in each array, add second set of brackets 
 array_of_arrays[0][0]
 # => 1
array_of_arrays[0][1]
 # => 2
array_of_arrays[0][2]
 # => 3
array_of_arrays[1][0]
 # => 4
array_of_arrays[1][1]
 # => 5
array_of_arrays[1][2]
 # => 6
array_of_arrays[2][0]
 # => 7
array_of_arrays[2][2]
 # => 8
array_of_arrays[2][3]
 # => 9 

 # While this works, it requires soecific concrete code. 
 # If one of these arrays had more or less than three elements, we would have to change our code 

 # Using while loops solves this 
 # When looping through an Array of Arrays data Structure, we add a second while loop 
 # First we start with a single loop 
 count = 0 
  while count < array_of_arrays.length do 
    p array_of_arrays[count]
    count += 1 
  end 
puts ""
    #=>   [1, 2, 3]
    #     [4, 5, 6]
    #     [7, 8, 9] 

# Using p will display each array, but puts would output all the values inside those array!
# We use p here to make the output a little cleaner 

# Using a second while loop 
count = 0 
while count < array_of_arrays.length do 
    p array_of_arrays[count]

    inner_count = 0 
    while inner_count < array_of_arrays[count].length do 
        p array_of_arrays[count][inner_count] 
        inner_count += 1
    end

    count += 1
end
    #=> [1, 2, 3]
    #=> 1
    #=> 2
    #=> 3
    #=> [4, 5, 6]
    #=> 4
    #=> 5
    #=> 6
    #=> [7, 8, 9]
    #=> 7
    #=> 8
    #=> 9

# What is happening. 
# Everytime the outer while loop executes, the inner while loop runs three times. 
#   The outer while loop executes because count is less than the length of array_of_arrays 
#   p array_of_arrays[count] is called, which prints the entire first nested array
#   inner_count is assigned to 0
#   the inner while loop executes because inner_count is less than the length of the first nested array, array_of_arrays[count]
#   p array_of_arrays[count][inner_count] is called, printing the first value of the first nested array because count is 0 and inner_count is 0
#   inner_count is incremented and now equals 1
#   the inner while loop executes because inner_count is less than the length of the first nested array, array_of_arrays[count]
#   p array_of_arrays[count][inner_count] is called, printing the second value of the first nested array because count is still 0 and inner_count is 1
#   inner_count is incremented and now equals 2
#   the inner while loop executes because inner_count is less than the length of the first nested array, array_of_arrays[count]
#   p array_of_arrays[count][inner_count] is called, printing the third value of the first nested array because count is still 0 and inner_count is 2
#   inner_count is incremented and now equals 3
#   the inner while loop does not execute because inner_count is now equal to the length of the first nested array
#   count is incremented and now equals 1
# The process happens two more times, looping through the second and theird nested arrays
#-----------------------------------------------------------------------------------------------

# Mapping Nested Arrays 
# We displayed nested content, now let's try to collect it. 
# Given the same array of arrays 
array_of_arrays = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
] 

# What if we wanted to collect all the value of each nested array into a single array 
# First we create a variable, results_array, the new array we want 
# Then, we build two while loops again 
# Instead of outputting each element in each nested array, we'll just push it into the results_array 

count = 0 
results_array = [] # new array 

while count < array_of_arrays.length do 
    inner_count = 0 
    while inner_count < array_of_arrays[count].length do 
        results_array << array_of_arrays[count][inner_count] # pushes every element into an array 
        inner_count += 1
    end
    count += 1
end

p results_array
#=> [1, 2, 3, 4, 5, 6, 7, 8, 9]
#------------------------------------------------------------------------------------------

# Reducing Values in Nested Arrays 
# Similar to mapping over an array, reducing requires a variable to contain an accumulated result 
# If we wanted the sum of all of these nested values 
# We would replace the array from last time with an integer 
count = 0 
sum = 0 

while count < array_of_arrays.length do 
    inner_count = 0 
    while inner_count < array_of_arrays[count].length do 
        sum = sum + array_of_arrays[count][inner_count] # adds the element's value to sum and sets sum
        inner_count += 1 
    end
    count += 1
end

p sum
#=> 45

# Conclusion 
# Using two while loops, we were able to diplay, collect, and reduce a set of nested arrays 
# The exact design of the loops required for this sort of task is dependent on the data structure you are working with 
# An Array of Array of Arrays for example would need three loops 

# The takeaway is that we can draw out the information we want from data structures by iterating over them with basic loops 
# This is common so Ruby has build in methods to handle this like each, map and sum that we can directly apply to arrays 
# At their cores, they are all based on simple loops. 