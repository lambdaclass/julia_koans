module IterationKoans
using IterTools

#=
    Iterations are important and frequently used in most common languages.
    Here are some useful links to the documentation regarding iterations in Julia:
        - https://docs.julialang.org/en/v1/base/iterators/
        - https://juliacollections.github.io/IterTools.jl/v0.2.1/
=#

function range_iteration(n, m, step)
    #=
    return the sum of the elements iterating between n and m with step "step"
    ex: n = 1; m = 10; step = 1; return 55
    =#
end

function efficient_vector_iteration(vector)
    #=
    return a vector with the multiplication of the elements of "array" by its index
    ex: array = [2, 4, 9 , 9]; return [2, 8, 27, 36]
    =#
end

function chain_iterations(array, tuple)
    #=
    chain the iteration over the array and the tuple and return a new vector with its elements
    ex: array = [2, 3, 4]; tuple = ("e", 8, "hello") return [2, 3, 4, "e", 8, "hello"]
    =#
end

function simultaneous_iteration(a, b)
    #=
    return an iterable object containing in a tuple the values of a and b
    ex: a = [1, 2, 3] b = [4, 5, 6]. Then: [i for in returned_value ] == [(1, 4), (2, 5), (3, 6)]
    =#
end
end
