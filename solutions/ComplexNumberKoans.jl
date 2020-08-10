module ComplexNumberKoans

#=
links:
    - https://docs.julialang.org/en/v1/manual/complex-and-rational-numbers/
    - http://matrix.umcs.lublin.pl/DOC/julia-doc/html/manual/complex-and-rational-numbers.html
=#

function sum(x,y)
    return x+y
end

function substract(x,y)
    return x-y
end

function multiplication(x,y)
    return x*y
end

function division(x,y)
    return x/y
end

function power(x, y)
    return x^y
end

function square_root(x)
    return sqrt(x)
end

function real_part(x)
    return real(x)
end

function imaginary_part(x)
    return imag(x)
end

function conjugate(x)
    return conj(x)
end

function absolute_value(x)
    return abs(x)
end

function angle_in_radians(x)
    return angle(x)
end

end

