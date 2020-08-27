module PythonInterop
using PyCall
np = PyCall.pyimport("numpy")

function __init__()
    py"""

    def sinpi(x):
        return np.sin(np.pi * x)

    def pyfib(n, fib):
        # print("hello from python")
        if(n < 2):
            return n
        else:
            return fib(n-1, pyfib) + fib(n-2, pyfib)
    """
end

function py_sinpi(x)
    py"sinpi"(x)
end

function get_pyfib()
    py"pyfib"
end

function jlfib(n, fib)
    # println("hello from julia")
    n < 2 ? n : fib(n-1, fib) + fib(n-2, fib)
end

end
