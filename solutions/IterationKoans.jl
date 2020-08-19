using IterTools

function range_iteration(n, m, step)
    #return the sum of the elements iterating between n and m with step "step"
    sum = 0
    for i in n:step:m
        sum+=i
    end
    return sum
end

function efficient_vector_iteration(array)
    #return the multiplication of the element by its index
    for i in eachindex(array)
        array[i]*= i
    end
    return array
end

function chain_iterations(array, tuple)
    #chain the iteration over the array and the tuple and return a new vector with its elements
    new_array = []
    for i in chain(array, tuple)
        append!(new_array,i)
    end
    return new_array
end
end
