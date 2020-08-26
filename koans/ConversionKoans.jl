module ConversionKoans

#=
    Conversion allows to apply methods defined for the converted type.
    Here is the basic documentation for conversion and promotion in Julia:
        -https://docs.julialang.org/en/v1/manual/conversion-and-promotion/
=#

struct MyTypeComplex
           real::Float64
           imaginary::Float64
       end

struct YourType
       end

function type_of(x)
end

function int_to_float64(int)
end

function define_YourType(int, float)
    #=
    define a type YourType above, it receives an Int64 and a Float64
    =#
end

function convertion_vector_to_MyTypeComplex(vec)
    #=
    define the conversion, from vec[::Float64, ::Float64] to MyType defined above and use the function convert
    =#
end

end
