module ConversionKoans

#=
Links:
    - https://docs.julialang.org/en/v1/manual/conversion-and-promotion/
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
    return typeof(x)
end

function int_to_float64(int)
    return convert(Float64, int)
end

function define_YourType(int, float)
    #=
    define a type YouType above, it receive an Int64 and a Float64
    =#
    return YourType(int, float)
end

function convertion_vector_to_MyTypeComplex(vec)
    #=
    define the conversion, from vec[::Float64, ::Float64] to MyType defined above to use the function convert
    =#

    convert(::Type{MyTypeComplex}, x) = MyTypeComplex(x[1],x[2])
    return convert(MyTypeComplex, vec)
end

end
