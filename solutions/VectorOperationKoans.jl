module VectorOperationKoans
using LinearAlgebra

function vector_lenght(x)
    return length(x)
end

function range_1_to_n(n)
    return collect(1:n)
end

function vector_of_zeros(n)
    return zeros(n)
end

function vector_of_ones(n)
    return ones(n)
end

function elementwise_sum(x, y)
    return x+y
end

function elementwise_substraction(x, y)
    return x-y
end

function scalar_vector_addition(vec, k)
    return vec.+k
end

function scalar_vector_multiplication(vec, k)
    return k*vec
end

function scalar_product(x, y)
    return dot(x, y)
end

function norm_l2(x)
    norm(x)
end

function euclidean_distance(x, y)
    norm(x-y)
end

end
