 
# An array is the basic data structure to work with a collection of objects in Julia. This objects
# can be of the same type or they can be of different types.
# Arrays can even store another arrays inside of them, which becomes useful to work with matrices, among
# other applications.

# You can check the documentation to follow this koan
# https://docs.julialang.org/en/v1/base/arrays/


module ArrayKoans


function zeros_1d(n)
    # A function that given an integer n, returns a 1D array with n zeros.
    # Example: zeros_1d(3) = [0.0, 0.0, 0.0]

end

function zeros_2d(n)
    # A function that given an integer n, returns a nxn matrix of zeros.
    # Example: zeros_2d(2) = [0.0 0.0; 0.0 0.0]
end

function array_shape(array)
    # return the shape of the array
end

function array_dimension(array)
    #return the dimension of the array
end

function num_elements(array)
    #return the number of elements of the array
end

function empty_array(mytype)
    #return an empty 1D array of type mytype
end

function range_array(start, stop, step)
    #use the collect function to return an array
end

function filled_array(val, size)
    #use create an array of size "size" filling all values with val
end

function reshape_array(array)
    #reshape the array to be 1D
end

function copy_shape(array)
   # return a new array with the shape of array
end

function entire_column(array, col)
    #return the entire column "col" of a 2D array
end

function count_repetitions(array, a)
    #return how many times "a" is in the array
end

function array_of_functions()
    #return an 1D-array having as elements the functions sin, cos, tan
end

function find_index(array, a)
    #= return an array of indices where there is an "a" in the array
    the returned value must be an array with CartesianIndex elements
    =#
end

end
