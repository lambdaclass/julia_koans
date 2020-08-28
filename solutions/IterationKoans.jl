module IterationKoans
#=
    Iterations are important and frequently used in most common languages, specially working with data.
    Here are some useful links to the documentation regarding iterations in Julia:
        - https://docs.julialang.org/en/v1/base/iterators/
        - https://juliacollections.github.io/IterTools.jl/v0.2.1/
=#

using Pkg
Pkg.add("IterTools")
using IterTools

function range_iteration(n, m, step)
    #=
     Return the sum of the elements iterating between n and m with step "step"
     Here is the link to the documentation:
     - https://docs.julialang.org/en/v1/manual/control-flow/#man-loops
     Ex: n = 1; m = 10; step = 1; return 55
    =#
    sum = 0
    for i in n:step:m
        sum+=i
    end
    return sum
end

function efficient_vector_iteration(array)
    #=
     Return a vector with the multiplication of the elements of "array" by its index
     Here is the link to the documentation to the function used:
      - https://docs.julialang.org/en/v1/base/arrays/#Base.eachindex
     Ex: array = [2, 4, 9 , 9]; return [2, 8, 27, 36]
    =#

    for i in eachindex(array)
        array[i]*= i
    end
    return array
end

function chain_iterations(array, tuple)
    #=
     Chain the iteration over the array and the tuple and return a new vector with its elements
     Here are the links to the documentation:
      - https://juliacollections.github.io/IterTools.jl/v0.2.1/#IterTools.chain
      - http://www.jlhub.com/julia/manual/en/function/append-exclamation
      - https://docs.julialang.org/en/v1/base/collections/#Base.collect-Tuple{Any}
     Ex: array = [2, 3, 4]; tuple = ("e", 8, "hello") return [2, 3, 4, "e", 8, "hello"]
    =#
    new_array = []
    for i in chain(array, tuple)
        append!(new_array,i)
    end
    return collect(new_array)
end

function simultaneous_iteration(a, b)
    #=
     Return an iterable object containing in a tuple the values of a and b
     Here is the link to the function used:
      - https://docs.julialang.org/en/v1/base/iterators/#Base.Iterators.zip
     Ex: a = [1, 2, 3] b = [4, 5, 6]. Then: [i for in returned_value ] == [(1, 4), (2, 5), (3, 6)]
    =#
    return zip(a,b)
end
end
