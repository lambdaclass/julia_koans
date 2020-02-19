module MultipleDispatchKoans

#=
Links:
    - https://docs.julialang.org/en/v1/manual/methods/
=#

struct Dog
    name::String
end

struct Cat
    name::String
end

function hello()
    "hello stranger"
end

function hello(name)
    "hello $name"
end

function pet_talk(pet::Dog)
    "$(pet.name): bark"
end

function pet_talk(pet::Cat)
    "$(pet.name): meow"
end

end
