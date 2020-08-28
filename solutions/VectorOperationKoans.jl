module VectorOperationKoans
using LinearAlgebra

    #=
    Vectors are a commmon data structure containers present in most common programming
    languages. Particularly in Julia, they are represented as a 1D Array. Also, basic linear algebra
    operations are useful for common needed calculations such as norms and distances.
    Here is some useful documentation for arrays (and vectors) in Julia and the LinearAlgebra module:
        - https://docs.julialang.org/en/v1/base/arrays/
        - https://docs.julialang.org/en/v1/stdlib/LinearAlgebra/
    =#

function vector_length(vec)
    #=
     Return the length of the vector "vec".
     Ex: vec = [ 9, 5, 6]; return 3.
    =#
    return length(vec)
end

function range_1_to_n(n)
    #=
     Return a vector with ordered elements from 1 to n.
     Ex: n = 5; return [1, 2, 3, 4, 5].
    =#
    return collect(1:n)
end

function vector_of_zeros(n)
    #=
     Return a vector with n zero elements.
     Ex: n = 4; return [0, 0, 0, 0].
    =#
    return zeros(n)
end

function vector_of_ones(n)
    #=
     Return a vector with n ones.
     Ex: n = 3; return [1, 1, 1].
    =#
    return ones(n)
end

function elementwise_sum(x, y)
    #=
     Return the element-wise sum of the vectors x and y.
     Ex: x = [2, 4, 6]; y = [8, 0, -1]; return [10, 4, 5].
    =#
    return x+y
end

function elementwise_substraction(x, y)
    #=
     Return the element-wise substraction of the vectors x and y.
     Ex: x = [2, 4, 6]; y = [8, 0, -1]; return [-6, 4, 7].
    =#
    return x-y
end

function scalar_vector_addition(vec, k)
    #=
     Return the outcome of adding the scalar k to the vector vec.
     Ex: k = 2; vec = [3, 4, 5]; return [5, 6, 7].
    =#
    return vec.+k
end

function scalar_vector_multiplication(vec, k)
    #=
     Return the outcome of multiplying the scalar k to the vector vec.
     Ex: k = 2; vec = [3, 4, 5]; return [6, 8, 10].
    =#
    return k*vec
end

function scalar_product(x, y)
    #=
     Return the scalar or dot product of x and y.
     Ex: x = [2, 4, 6]; y = [3, 7, 8]; return 82 (2*3 + 4*7 + 8*6).
    =#
    return dot(x, y)
end

function norm_l2(x)
    #=
     Return the norm L2 of the vector x.
     Ex: x = [4, -3, 7]; return ≈ 8.6 (sqrt(4*4 + -3*-3 + 7*7))
    =#
    norm(x)
end

function euclidean_distance(x, y)
    #=
     Return the euclidean distance between x and y.
     Ex: x = [1, 2, 4]; y = [ 5, 6, 7]; return ≈ 6.4 (sqrt( (1-5)^2 + (2-6)^2 + (4-7)^2 ))
    =#
    norm(x-y)
end

end
