# Nested Arrays 
# Recognize vocabulary term: "array of array" or ("AoA")
# Recognize that "arrays of arrays" are grids or coordinate systems
# Create a nested Array
# Read scalar data from an array of arrays
# Modify scalar data in an array of arrays

# Intro 
# keep in mind that an array of arrays (or matrix) is well expressed by a grid 
# Like a vending machine where you select the item you want by finding its coordinates and entering them in on a keypad 
# Chess boards were each square has a row and column coordinate according to Stamma's algebraic notation for chess 
# Latitude and longitude uniquely identifiying a place on a map 

# From Array to Array of Array 
# An array is like a list but in code form. 
# It is a way for your program to store pieces of data as elements in a collection 
# Arrays can contain any combination of data types. 

# Imagine an Array as a single long shelf with books on it 
# The shelf is like an Array and each book is an element of it 
# We can refer to the books by saying things like 
#   House of Leaves is the third book from the left-most edge 
#   The best Latin grammar book is the second book from the left-most edge 
#   The zeroth book from the left-most edge (i.e. the first book) is Hege's Phenomenology

# What if we had multiple bookshelves that we stacked on top of each other, like a bookcase
# It would look a bit more like our "key image" the grid 

# To refer to a book, we provide two pieces of information 
#   1. Which shelf from the bottom 
#   2. What distance from the left 

# Thus we'd say:
#   On the shelf that's 3rd from the bottom of the bookcase and 
#   is the second from the left-most edge

# The bottom shelf is in the zeroth position 
#   House of Leaves is on the zeroth shelf from the bottom, the third book from the left-most edge
#   The best Latin grammar book is on the zeroth shelf from the bottom, the second book from the left-most edge
#   On the zeroth shelf from the bottom at the zeroth book from the left-most edge (i.e. the first book) you will find Hegel's Phenomenology

# Here's how an Array of Arrays creates a grid 
AoA = [
    [1, 2, 3],  <0> [7 8 9]
    [4, 5, 6],  <1> [4 5 6]
    [7, 8, 9],  <2> [1 2 3]
]

AoA[1] #=> [4,5,6]
AoA[1][1] #=> 5

# Recognize Vocabulary Term "Array of Array"
# There are lots of words that mean "Array of Arrays"
#   2-D array: Two dimensional Array: another words for a nested array 
#   Multidimensional Array: 3.D arrays are also possible (Array of Array of Array)
#   AoA: Array of Array: another word for a nested array 
#   cell of cel: the coordinate elements inside of an Array that itself inside another Array 
#       alternatively, it's what in the grid at the intersection of two coordinates 
#   grid: Another word for arrays of arrays: the key image of an Array of Arrays 
#   inner Array: Since we're making AoA that Arrays contained by the outermose Array can be called "inner arrays"
#   outer Array: See "inner Array"
#   matrix: Another word for an Array of Arrays 
#   X by Y array: An array that contains Y-many many rows with X-many many elements in it 
#       It defines the size of a matrix's maximum space (or, "area")  

# Recognize that "Arrays of Arrays" are Grids or Coordinate System 
# notice from the bookcase exapmle, that finding a book in a 2-D Array required us to pass two integers or coordinates 

# Applications of nested Arrays are many
#   Keeping track of the kids' names on the "hand-hold ropes" at a museum (5 kids per rope, 5 ropes per class, maximum 25 kids per field trip)
#   The latest fantasy video game (The dungeon is a 10 by 10 matrix of rooms. When the player activates, load the character in room (2, 3) where dungeon_map[2][3] points to the String: "The Throne Room")
#   Tetris-like games and its children (When the block rests, visit each row and count whether every element in the row is status "filled." If all cells are filled, remove the row)
#   Art. Filling in colors in a simple matrix is how "sprite" art is created. The beloved original Nintendo Mario or the hero Link from "Legend of Zelda" were both simple colored cells within a matrix
#----------------------------------------------------------------------------------------------

# Create a Nested Array 
# Make a spice rack 
# Simple 1-D arrays 
shelf_1 = ["Mace", "Ginger", "Marjoram"]
shelf_2 = ["Paprika", "Fajita Mix", "Coriander"]
shelf_3 = ["Parsley", "Sage", "Rosemary"]

spice_rack = [
    shelf_1,
    shelf_2,
    shelf_3
]
# => [["Mace", "Ginger", "Marjoram"], ["Paprika", "Fajita Mix", "Coriander"], ["Parsley", "Sage", "Rosemary"]] 

# If we don't use shelf_1, shelf_2, shelf_3, then we don't need to assign them before nesting them in spice_rach 
# We can write a nested Array using Array literal formatting 
# 2-D Array all in one go
spice_rack = [["Mace", "Ginger", "Marjoram"], ["Paprika", "Fajita Mix", "Coriander"], ["Parsley", "Sage", "Rosemary"]]

# Same as above, but using whitespace to make it easier for humans to read

spice_rack_pretty = [
  ["Mace", "Ginger", "Marjoram"],
  ["Paprika", "Fajita Mix", "Coriander"],
  ["Parsley", "Sage", "Rosemary"]
] 
#-----------------------------------------------------------------------------------

# Read Scalar Data From a Nested Array 
# One of the defining feature of 2-D Arrays is that we use coordinates to target unique elements in a grid 
# To read an element from a nested Array, simply provide the coordinates 
spice_rack = [
    # 0             1                    2
  ["Mace",      "Ginger",       "Marjoram"],   # 0
  ["Paprika",   "Fajita Mix",   "Coriander"],  # 1
  ["Parsley",   "Sage",         "Rosemary"]    # 2
]

spice_rack[0] #=>  ["Mace", "Ginger", "Marjoram"]
spice_rack[0][1] #=> "Ginger"
spice_rack[1][1] #=> "Fajita Mix" 

# The first set of brackets refers to the row of the nested Arrays 
# The second set of brackets refer to the element within that row 
#--------------------------------------------------------------------------------------------

# Modify Scalar Data In an Array of Arrays 
# The same technique of using coordinates applies both to reading and modification. 
# If you can "Target" and element you can read it or update it 
spice_rack = [
    # 0             1                    2
  ["Mace",      "Ginger",       "Marjoram"],   # 0
  ["Paprika",   "Fajita Mix",   "Coriander"],  # 1
  ["Parsley",   "Sage",         "Rosemary"]    # 2
]

spice_rack[1][1] #=> "Fajita Mix" (it's not really a spice)
spice_rack[1][1] = "Cumin" #=> "Cumin"
spice_rack[1][1] #=> "Cumin" 