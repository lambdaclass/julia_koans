module ArrayKoans

function array_1d(n)
    # return a 1D array of zeros with length n
    return zeros(n)
end

function array_2d()
    # return a 2x2 matrix of zeros
    return zeros(2,2)
end

function array_shape(array)
    # return the shape of the array
    return size(array)
end

function array_dimension(array)
    #return the dimension of the array
    return ndims(array)
end

function num_elements(array)
    #return the number of elements of the array
    return length(array)
end

function empty_array(mytype)
    #return an empty 1D array of type mytype
    return mytype[]
end

function range_array(start, stop, step)
    #use the collect function to return an array
    return collect(start:step:stop)
end

function filled_array(val, size)
    #use create an array of size "size" filling all values with val
    return fill(val, size)
end

function reshape_array(array)
    #reshape the array to be 1D
    return reshape(array, prod(size(array)))
end

function copy_shape(array)
   # return a new array with the shape of array
   return similar(array)
end

function entire_column(array, col)
    #return the entire column "col" of a 2D array
    return (array[:,col])
end

function count_repetitions(array, a)
    #return how many times "a" is in the array
    return count(i-> i==a, array)
end

function array_of_functions()
    #return an 1D-array having as elements the functions sin, cos, tan
    return [sin cos tan]
end

function find_index(array, a)
    #= return an array of indices where there is an "a" in the array,
    the returned value must be an array with CartesianIndex elements
    =#
    return findall(x -> x == a, array)
end

end
