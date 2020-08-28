module ArrayKoans

function array_1d(n)
    #=
     Write a function that given an integer n, returns a 1D array with n zeros.
     Here is the link to the documentation:
     - https://docs.julialang.org/en/v1/base/arrays/#Base.zeros
     Ex: zeros_1d(3) = [0.0, 0.0, 0.0]
    =#
    return zeros(n)
end

function array_2d()
    #=
     Return a 2x2 matrix of zeros.
     Here is the link to the documentation:
     - https://docs.julialang.org/en/v1/base/arrays/#Base.zeros
     Ex: return [0 0; 0 0]
    =#
    return zeros(2,2)
end

function array_shape(array)
     #=
     Return the shape of the array. When we work with arrays, the shape of the
     array is a important property since many operations like the dot product and
     matrix multiplications require specific array shapes.  return the shape of the array
     Here is the documentation
     to the operation in Julia for the shape of the array:
        - https://docs.julialang.org/en/v1/base/arrays/#Base.size
    =#
    return size(array)
end

function array_dimension(array)
    #=
     Return the dimension of the array. With the shape, the dimension of the array are
     two of the most important properties, frequently used when we work with arrays.
     Here is the link to the documentation:
     - https://docs.julialang.org/en/v1/base/arrays/#Base.ndims
     Ex: array = 3×2 Array{Int64,2}: 4 5 ; return 2
                                     5 6
                                     6 7
    =#
    return ndims(array)
end

function num_elements(array)
    #=
     Return the number of elements of the array.
     Here is the link to the documentation:
     - https://docs.julialang.org/en/v1/base/arrays/#Base.length-Tuple{AbstractArray}
     Ex: array = 3×2 Array{Int64,2}: 4 5 ; return 6
                                     5 6
                                     6 7
    =#
    return length(array)
end

function empty_array(mytype)
    #=
     Return an empty 1D array of type mytype.
     Here is a useful link:
     - https://riptutorial.com/julia-lang/example/20451/initialize-an-empty-array
    =#
    return mytype[]
end

function range_array(start, stop, step)
    #=
     Arrays having ordered values within a range are frequently used, for iteration
     for example. Use the collect function to return an array.
     Here is the link to the documentation to the function used:
        - https://docs.julialang.org/en/v1/base/collections/#Base.collect-Tuple{Any}
     Ex: start = 1; stop = 5; step = 2; return [1, 3, 5]
    =#
    return collect(start:step:stop)
end

function filled_array(val, size)
    #=
     Create an array of size "size" filling all values with val.
     Here is some useful documentation to the function used:
      - https://docs.julialang.org/en/v1/base/arrays/#Base.fill
     Ex: val = 2; size = (2,4); return:  [2 2 2 2; 2 2 2 2]
    =#
    return fill(val, size)
end

function reshape_array(array)
    #=
     Since the shape of the array is an important property, reshaping the
     array is an useful tool, being a convenient operation most of the time.
     Write a function to reshape the array "array" to be 1D.
     Here is the link to the documentation:
     - https://docs.julialang.org/en/v1/base/arrays/#Base.reshape
     Example: array = [ 3 4 5; 6 7 8], return  [ 3, 4, 5, 6, 7, 8]
    =#
    return reshape(array, prod(size(array)))
end

function copy_shape(array)
   #=
    Return a new array with the shape of array.
    Here is the link to the function used:
     - https://docs.julialang.org/en/v1/base/arrays/#Base.similar
    =#
   return similar(array)
end

function entire_column(array, col)
    #=
     Often we have an array-type data structure where each column represents a property in the data.
     Accessing and returning a particular column is therefore commonly done.
     Return the entire column "col" of a 2D array.
     Ex: array [3 4 5; 6 7 8; 9 10 11]; col = 3; return [5; 8; 11]
    =#
    return (array[:,col])
end

function count_repetitions(array, a)
    #=
     Counting repetitions of a specific value is a common operation when
     we work with arrays. Write a function counting how many times "a" is in the array.
     Here is the link to the documentation of count:
     - https://docs.julialang.org/en/v1/base/collections/#Base.count
     Ex: array = [ 4 5 6 ;  6 6 8]; a = 6; return 3.
    =#
    return count(i-> i==a, array)
end

function array_of_functions()
    #=
     Return an 1D-array having as elements the functions sin, cos, tan.
     This is useful, for example, if we want to evaluate them over
     a data structure vectorizing them.
    =#
    return [sin cos tan]
end

function find_index(array, a)
    #=
     Return an array of indices where there is an "a" in the array,
     the returned value must be an array with CartesianIndex elements.
     Here is the link to the documentation:
      - https://docs.julialang.org/en/v1/base/arrays/#Base.findall-Tuple{Any}
     Ex: array = [3 4 5; 5 6 6]; a = 5;
     return Array{CartesianIndex{2},1}:  CartesianIndex(2, 1)
                                         CartesianIndex(1, 3)
    =#
    return findall(x -> x == a, array)
end

end
