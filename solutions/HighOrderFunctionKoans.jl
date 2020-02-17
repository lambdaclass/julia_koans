module HighOrderFunctionKoans

#=
Links:
  - https://docs.julialang.org/en/v1/manual/functions/#man-anonymous-functions-1
  - https://docs.julialang.org/en/v1/base/math/#Base.round
  - https://docs.julialang.org/en/v1/base/collections/#Base.map
  - https://docs.julialang.org/en/v1/base/collections/#Base.filter
=#

function round_list(list)
    map(round, list)
end

function apply_fn(f, x)
    f(x, 5)
end

function add_n(list, n)
    f = x -> x + n
    map(f, list)
end

function remove_multiples(list, n)
    f = x -> x % n != 0
    filter(f, list)
end

end
