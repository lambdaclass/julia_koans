module ComplexNumberKoans
#=
    Julia has a predefined type for complex numbers, where the constant "im" is
    interpreted as the complex number i. Also in Julia, most common operations
    with complex are already defined. Here is some useful documentation regarding
    complex numbers in Julia.
     - https://docs.julialang.org/en/v1/manual/complex-and-rational-numbers/
=#

#=
    All the functions bellow expect complex numbers with the syntax x = 1 + 1im.
=#

function sum(x,y)
    #=
     Return the sum of the complex numbers x and y.
     Ex: x = 1 + 1im; y = 2 + 3im; return 3 + 4im.
    =#
end

function substract(x,y)
    #=
     Return the substraction of the complex numbers x and y.
     Ex: x = 1 + 1im; y = 2 + 3im; return -1 - 2im.
    =#
end

function multiplication(x,y)
    #=
     Return the multiplication of the complex numbers x and y.
     Here is some useful information about multiplication in complex numbers.
        - https://en.wikipedia.org/wiki/Complex_number#Multiplication
     Ex: x = 1 + 1im; y = 2 + 3im; return -1 + 5im.
    =#
end

function division(x,y)
    #=
     Return the outcome of dividing the complex numbers x and y.
     Here is some useful information about division in complex numbers.
        - https://en.wikipedia.org/wiki/Complex_number#Reciprocal_and_division
     Ex: x = 1 - 1im; y = 4 + 4im ; return 0 - 0.25im
    =#
end

function power(x, y)
    #=
    Return the exponentiation of x^y.
    Here is some useful information about the exponentiation operation in complex numbers.
        - https://en.wikipedia.org/wiki/Complex_number#Exponentiation
    Ex: x = 1im; y = 2; return -1.
    =#
end

function square_root(x)
    #=
     Return the square root of x.
     Here is some useful information about the square root operation in complex numbers.
        - https://en.wikipedia.org/wiki/Complex_number#Square_root
     Ex: x = 4im; return ≈ 1.414 + 1.414im (sqrt(2) + sqrt(2)im)
    =#
end

function real_part(x)
    #=
     Return the real part of the complex number x.
     Here is some useful information about complex numbers definitions
        - https://en.wikipedia.org/wiki/Complex_number
     Ex: x = 2 + 4im; return 2.
    =#
end

function imaginary_part(x)
    #=
     Return the imaginary part of the complex number x.
     Here is some useful information about complex numbers definitions
        - https://en.wikipedia.org/wiki/Complex_number
     Ex: x = 2 + 4im; return 4.
    =#
end

function conjugate(x)
    #=
     Return the conjugate part of the complex number x.
     Here is some useful information about complex conjugates
        - https://en.wikipedia.org/wiki/Complex_number#Conjugate
     Ex: x = 2 + 4im; return 2 - 4im.
    =#
end

function absolute_value(x)
    #=
     Return the absolute value of the complex number x.
     Here is some useful information about absolute value or modulus of a complex number.
        - https://en.wikipedia.org/wiki/Complex_number#Modulus_and_argument
     Ex: x = 3 + 4im; return 5.
    =#
end

function angle_in_radians(x)
    #=
     Return the angle in radians of the complex number x.
     Here is some useful information about the angle or argument of a complex number.
        - https://en.wikipedia.org/wiki/Complex_number#Modulus_and_argument
     Ex: x = 4im; return ≈ 1.57 (pi/2).
    =#
end

end
