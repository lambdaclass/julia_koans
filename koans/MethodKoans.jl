module MethodKoans

#=  Defining one possible behavior of a function is called a method in julia and it's
    important because sometimes we want the function to allow only some kind of input,
    to have the same behavior with different types of inputs or to do different calculations
    depending on the kind of data as input.
    Here is som useful documentation to method in Julia:
    - https://docs.julialang.org/en/v1/manual/methods/#Function-like-objects-1
=#

function one_type_function()
    #=
        define a function accepting only a Float64 type of number and return it
    =#
end

function number_type_function()
    #=
     define a function accepting any type of pair of numbers and return their sum
    =#
end

function same_type_function()
    #=
    define a function accepting only 2 variables of the same type and return their sum
    =#
end

end
