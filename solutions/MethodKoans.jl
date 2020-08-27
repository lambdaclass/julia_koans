module MethodKoans

#= Links:
    - https://docs.julialang.org/en/v1/manual/methods/#Function-like-objects-1
=#

function one_type_function(x::Float64)
    #=
     define a function accepting only a Float64 type of number and return it.
     ex: one_type_function(3.4) accepted, one_type_function(3) not accepted (there is not function defined for it)
    =#
    return x
end

function number_type_function( x::Number, y::Number)
    #=
     define a function accepting any type of pair of numbers and return their sum.
     ex: number_type_function(1.2 + 1) return 2.1; number_type_function(3, -2) return 1
    =#
    return x+y
end

function same_type_function(x::T, y::T)  where {T}
    #=
     define a function accepting only 2 variables of the same type and return their sum.
     ex: same_type_function(2, 4) return 6; same_type_function(3.2, 2.5) return 5.;7
     same_type_function(6.2, 1) not accepterd (there is not function defined)
    =#
    return x+y
end
