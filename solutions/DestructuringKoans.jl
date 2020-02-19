module DestructuringKoans

#=
Links:
    - https://docs.julialang.org/en/v1/manual/functions/#Multiple-Return-Values-1
    - https://docs.julialang.org/en/v1/manual/functions/#Argument-destructuring-1
=#

function add_separately(x, y)
    x_real = real(x)
    x_im = imag(x)
    y_real = real(y)
    y_im = imag(y)
    x_real + y_real, x_im + y_im
end

function add_coordinates((x1, y1), (x2, y2))
    x1 + x2, y1 + y2
end

end
