module PythonInterop

#=
Links:
    - https://github.com/JuliaPy/PyCall.jl
    - https://en.wikipedia.org/wiki/Fibonacci_number

Notes:
    - When py"..." is used it evaluates the code in a Python namespace dedicated
    to your module (e.g. PythonInterop). Thus, you don't have to worry about
    name clash, but Python functions declared cannot be accessed outside your module.
    - Python functions must be defined in __init__ of your Julia module
=#

using Pkg
Pkg.add("PyCall")
using PyCall

function __init__()
end

# This function will return the sin of x pi
function py_sinpi(x)
end

function get_pyfib()
end

#=
This fibonacci function is a bit different of what is usually done,
it expects to receive the function it will call to do its recursion.
The general idea is to do something like this: jlfib -> pyfib -> jlfib -> ...
=#
function jlfib(n, fib)
end

end
