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
            a::Int64
            b::Float64
       end

function type_of(x)
    #=
     The type of a variable is one of its most important features,
     so we want to have this information at hand.
     Write a function returning the type of x.
     Here is the link to the documentation:
      - http://www.jlhub.com/julia/manual/en/function/typeof
     Ex: x = 3.6; return Float64.
    =#
    return typeof(x)
end

function int_to_float64(int)
    #=
     Converting from one type to another is a common operation,
     for example, converting a variable of type int to type float.
     Write a function converting the variable "int" to Float64.
     Here is the link to the function used:
     - http://www.jlhub.com/julia/manual/en/function/convert
     Ex: int = 4; return 4.0
    =#
    return convert(Float64, int)
end

function define_YourType(int, float)
    #=
     Sometimes defining a custom type allow you to create representations
     with some useful properties, as defining a complex number type as MyTypeComplex,
     defined above.
     Define a type YourType, it receives an Int64 and a Float64
     Here is some useful information regarding defining types:
      - https://docs.julialang.org/en/v1/manual/types/#Composite-Types
    =#
    return YourType(int, float)
end

function convertion_vector_to_MyTypeComplex(vec)
    #=
     The conversion function allow you to define the conversion
     behaviour between types.
     Define the conversion, from vec[::Float64, ::Float64] to
     MyType defined above to use the function convert
     Here is the link to some useful information about custom conversion
     functions in Julia:
      - https://docs.julialang.org/en/v1/manual/conversion-and-promotion/#Defining-New-Conversions
     Ex: convert(MyTypeComplex, vec)
    =#
    convert(::Type{MyTypeComplex}, x) = MyTypeComplex(x[1],x[2])
    return convert(MyTypeComplex, vec)
end

end
