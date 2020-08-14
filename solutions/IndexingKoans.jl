module IndexingKoans

#=
    links:
        - https://docs.julialang.org/en/v1/manual/arrays/#man-array-indexing-1
=#

function first_element(vector)
    return vector[1]
end

function last_element(vector)
    return vector[end]
end

function range_indices(array)
    # return all values of the 2D array except the first and the last columns
    return array[:, 2:size(array)[2]-1]
end

function indexed_assignment(array)
    # multiply x2 and replace the values of the first and the last columns of the 2D array
    array[:,[1,end]] = 2*array[:,[1,end]]
    return array
end

function elementwise_indexing_assigment(array, value)
    # assign the value to each position in the first and second columns of the 2D array
    array[:,[1,2]] .= value
    return  array
end

function apply_mask(array, condition)
    # return the values where the condition is true
    return array[map( x-> condition(x), array)]
end

end
