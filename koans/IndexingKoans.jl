module IndexingKoans

#=
    Accesing data from arrays or dataframes is necessary to make use of these data
    structures and learning how to index well can save you a lot of time. Here are some useful
    links to the documentation of indexing in julia:
        - https://docs.julialang.org/en/v1/manual/arrays/#man-array-indexing-1
=#

function first_element(vector)
    #=
     return the fist element of the vector.
     ex: vector = [7, 2, 4]; return 7
    =#
end

function last_element(vector)
    #=
     return the last element of the vector.
     ex: vector = [7, 2, 4]; return 4
    =#
end

function range_indices(array)
    #=
     return all values of 2D array except for the first and the last columns
     ex: array =2×4 Array   2  3  5  4        return   3  5
                            9  5  0  10                5  0
    =#
end

function indexed_assignment!(array)
    #=
     multiply x2 and replace the first and the last columns of the 2D array
     ex: array =2×4 Array{Int64,2}   2  3  5  4        return   4  3  5  8
                                     9  5  0  10                18 5  0  10
    =#
end

function elementwise_indexing_assigment!(array, value)
    #=
     assign the value to the first and second columns of the 2D array
     ex: array =2×4 Array{Int64,2}   2  3  5  4 ; value = 0; return 0  0  5  8
                                     9  5  0  10                   0  0  0  10
    =#
end

function apply_mask(array, condition)
    #=
    return the values where the condition is true
    ex: array = [4, 5, 6, 0]; condition: x<5; return [ 4, 0]
    =#
end

end
