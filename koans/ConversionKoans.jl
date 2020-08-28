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
    #=
     The type of a variable is one of its most important features,
     so we want to have this information at hand.
     Write a function returning the type of x.
     Ex: x = 3.6 return Float64.
    =#
end

function int_to_float64(int)
    #=
     Converting from one type to another is a common operation,
     for example, converting a variable of type int to type float.
     Write a function converting the variable "int" to Float64.
     Ex: int = 4; return 4.0
    =#
end

function define_YourType(int, float)
    #=
     Sometimes defining a custom type allow you to create representations
     with some useful properties, as defining a complex number type as MyTypeComplex,
     defined above.
     Define a type YourType, it receives an Int64 and a Float64
    =#
end

function convertion_vector_to_MyTypeComplex(vec)
    #=
     The conversion function allow you to define the conversion
     behaviour between types.
     Define the conversion, from vec[::Float64, ::Float64] to
     MyType defined above to use the function convert a return the
     conversion of vec.
     Ex: convert(MyTypeComplex, vec)
    =#
end

end
