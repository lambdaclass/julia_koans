module ConversionKoans

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
    define a type YouType above, it receive an Int64 and a Float64
    =#
end

function convertion_vector_to_MyTypeComplex(vec)
    #=
    define the conversion, from vec[::Float64, ::Float64] to MyType defined above to use the function convert
    =#
end

end
