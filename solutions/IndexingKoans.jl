module IndexingKoans

#=
    Accesing data from arrays or dataframes is necessary to make use of these data
    structures and learning how to index well can save you a lot of time. Here are some useful
    links to the documentation of indexing in julia:
        - https://docs.julialang.org/en/v1/manual/arrays/#man-array-indexing-1
=#

function first_element(vector)
    #=
     Return the fist element of the vector.
     Here is the link to the documentation:
      - https://docs.julialang.org/en/v1/manual/arrays/#man-array-indexing
     Ex: vector = [7, 2, 4]; return 7
    =#
    return vector[1]
end

function last_element(vector)
    #=
     Return the last element of the vector.
     Here is the link to the documentation:
      - https://docs.julialang.org/en/v1/manual/arrays/#man-array-indexing
     Ex: vector = [7, 2, 4]; return 4
    =#
    return vector[end]
end

function range_indices(array)
    #=
     Return all values of 2D array except for the first and the last columns
     Here is the link to the documentation:
     - https://docs.julialang.org/en/v1/manual/arrays/#man-supported-index-types
     Ex: array =2×4 Array   2  3  5  4        return   3  5
                            9  5  0  10                5  0
    =#
    return array[:, 2:size(array)[2]-1]
end

function indexed_assignment!(array)
    #=
     Operations only applied to a subset of the data are frequently used,
     for example, applying some change to couple of columns, representing those columns
     particular variables.
     Multiply x2 and replace the first and the last columns of the 2D array
     Here is some useful information to indexed assigment in Julia:
      - https://docs.julialang.org/en/v1/manual/arrays/#man-indexed-assignment
     Ex: array =2×4 Array{Int64,2}   2  3  5  4        return   4  3  5  8
                                     9  5  0  10                18 5  0  10
    =#
    array[:,[1,end]] = 2*array[:,[1,end]]
    return array
end

function elementwise_indexing_assigment!(array, value)
    #=
     Assign the value to the first and second columns of the 2D array
     Here is the link to element-wise indexing assigment in Julia:
      - https://docs.julialang.org/en/v1/manual/arrays/#man-array-and-vectorized-operators-and-functions
     Ex: array =2×4 Array{Int64,2}   2  3  5  4 ; value = 0; return 0  0  5  8
                                     9  5  0  10                   0  0  0  10
    =#
    array[:,[1,2]] .= value
    return  array
end

function apply_mask(array, condition)
    #=
     Mask are useful operations to work with the subset of the
     data with some condition satisfied.
     Return the values where the condition is true.
     Here is the link to the function used:
     - http://www.jlhub.com/julia/manual/en/function/map
     Ex: array = [4, 5, 6, 0]; condition: x<5; return [ 4, 0]
    =#
    return array[map( x-> condition(x), array)]
end

end
