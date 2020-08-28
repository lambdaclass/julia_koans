module MethodKoans

#=
    Defining one possible behavior of a function is called a method in julia and it's
    important because sometimes we want the function to allow only some kind of input,
    to have the same behavior with different types of inputs or to do different calculations
    depending on the kind of data as input.
    Here is som useful documentation to method in Julia:
    - https://docs.julialang.org/en/v1/manual/methods/#Function-like-objects-1
=#

function one_type_function(x::Float64)
    #=
     Define a function accepting only a Float64 type of number and return it.
     Here is the link to the documentation used:
      - https://docs.julialang.org/en/v1/manual/methods/#Defining-Methods
     Ex: one_type_function(3.4) accepted, one_type_function(3) not accepted (there is not function defined for it)
    =#
    return x
end

function number_type_function( x::Number, y::Number)
    #=
     Define a function accepting any type of pair of numbers and return their sum.
     Here is the link to the documentation used:
      - https://docs.julialang.org/en/v1/manual/methods/#Defining-Methods
     Ex: number_type_function(1.2 + 1) return 2.1; number_type_function(3, -2) return 1
    =#
    return x+y
end

function same_type_function(x::T, y::T)  where {T}
    #=
     Define a function accepting only 2 variables of the same type and return their sum.
     Here is the link to the documentation:
      - https://docs.julialang.org/en/v1/manual/methods/#Parametric-Methods
     Ex: same_type_function(2, 4) return 6; same_type_function(3.2, 2.5) return 5.;7
     same_type_function(6.2, 1) not accepterd (there is not function defined)
    =#
    return x+y
end
end
