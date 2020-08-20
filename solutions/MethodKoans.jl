module MethodKoans

#= Links:
    - https://docs.julialang.org/en/v1/manual/methods/#Function-like-objects-1
=#

function one_type_function(x::Float64)
    #define a function accepting only a Float64 type of number and return it
    return x
end

function number_type_function( x::Number, y::Number)
    # define a function accepting any type of pair of numbers and return their sum
    return x+y
end

function same_type_function(x::T, y::T)  where {T}
    #define a function accepting only 2 variables of the same type and return their sum
    return x+y
end
