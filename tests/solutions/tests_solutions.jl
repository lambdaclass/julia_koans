push!(LOAD_PATH, "./solutions")

using Test

using ArithmeticKoans
@testset "Arithmetic Operators" begin
    @test ArithmeticKoans.sum(1, 2) == 3
    @test ArithmeticKoans.difference(8, 1) == 7
    @test ArithmeticKoans.multiplication(10, 2) == 20
    @test ArithmeticKoans.division(35, 5) == 7.0
    @test ArithmeticKoans.integer_division(35, 5) == 7
    @test ArithmeticKoans.power(2, 2) == 4
    @test ArithmeticKoans.modulo(12, 10) == 2
end

using LogicalKoans
@testset "Logical Operators" begin
    @test LogicalKoans.not(true) == false
    @test LogicalKoans.not(false) == true
    @test LogicalKoans.equals(true, true) == true
    @test LogicalKoans.equals(false, false) == true
    @test LogicalKoans.not_equals(true, false) == true
    @test LogicalKoans.less_than(1, 10) == true
    @test LogicalKoans.greater_than(10, 1) == true
    @test LogicalKoans.less_than_or_equal_to(2, 2) == true
    @test LogicalKoans.less_than_or_equal_to(1, 10) == true
    @test LogicalKoans.less_than_or_equal_to(10, 1) == false
    @test LogicalKoans.greater_than_or_equal_to(2, 2) == true
    @test LogicalKoans.greater_than_or_equal_to(10, 1) == true
    @test LogicalKoans.greater_than_or_equal_to(1, 10) == false
end

using BitwiseKoans
@testset "Bitwise Operators" begin
    @test BitwiseKoans.not(2) == -3
    @test BitwiseKoans.and(3, 5) == 1
    @test BitwiseKoans.or(2, 4) == 6
    @test BitwiseKoans.xor_koan(2, 4) == 6
    @test BitwiseKoans.right_shift(2, 1) == 1
    @test BitwiseKoans.left_shift(2, 1) == 4
end

using ComplexNumberKoans
@testset "Complex Numbers" begin
    @test ComplexNumberKoans.sum(1 + 1im, 1 + 1im) == 2 + 2im
    @test ComplexNumberKoans.sum(1im, 1) == 1 + 1im
    @test ComplexNumberKoans.sum(1 + 1im, -1 - 1im) == 0 + 0im
    @test ComplexNumberKoans.substract(1 + 1im, -1 - 1im) == 2 + 2im
    @test ComplexNumberKoans.substract(1, -1im) == 1 + 1im
    @test ComplexNumberKoans.multiplication(1im, 1im) == -1
    @test ComplexNumberKoans.multiplication(1, 1im) == 1im
    @test ComplexNumberKoans.multiplication(1 + 2im, 3 + 2im) == -1 + 8im
    @test ComplexNumberKoans.division(1 + 2im, 1 - 2im) == -0.6 + 0.8im
    @test ComplexNumberKoans.power(im, 2) == -1
    @test ComplexNumberKoans.power(im, 3) == -1im
    @test ComplexNumberKoans.power(1 + im, 2) == 2im
    @test ComplexNumberKoans.square_root(2) == sqrt(2)
    @test ComplexNumberKoans.square_root(-1 + 0im) == im
    @test ComplexNumberKoans.real_part(1 + 1im) == 1
    @test ComplexNumberKoans.real_part(-2 + 1im) == -2
    @test ComplexNumberKoans.imaginary_part(-2 + 1im) == 1
    @test ComplexNumberKoans.imaginary_part(-2) == 0
    @test ComplexNumberKoans.imaginary_part(-2im) == -2
    @test ComplexNumberKoans.conjugate(-2im) == 2im
    @test ComplexNumberKoans.conjugate(1 + 1im) == 1 - 1im
    @test ComplexNumberKoans.absolute_value(1 + 1im) == sqrt(2)
    @test ComplexNumberKoans.absolute_value(1 - 2im) == sqrt(5)
    @test ComplexNumberKoans.angle_in_radians(-2im) == deg2rad(-90)
    @test ComplexNumberKoans.angle_in_radians(-1) == deg2rad(180)
    @test ComplexNumberKoans.angle_in_radians(1 + 1im) == deg2rad(45)
end

# using StringKoans
# @testset "Strings" begin
# end

# using ConversionKoans
# @testset "Type Conversions" begin
# end

# using ArrayKoans
# @testset "Arrays" begin
# end

# using VectorOperationKoans
# @testset "Vector Operators" begin
# end

# using MultiDimensionalArrayKoans
# @testset "Multi-dimensional Arrays" begin
# end

# using IndexingKoans
# @testset "Indexing" begin
# end

# using IterationKoans
# @testset "Iteration" begin
# end

# using ModuleKoans
# @testset "Modules" begin
# end

# using StructKoans
# @testset "Structs" begin
# end

# using UnionKoans
# @testset "Unions" begin
# end

# using FunctionKoans
# @testset "Functions" begin
# end

using HighOrderFunctionKoans
@testset "High Order Functions" begin
    f = (x, y) -> x + y
    @test HighOrderFunctionKoans.round_list([1.5, 2.3, 4.7]) == [2.0, 2.0, 5.0]
    @test HighOrderFunctionKoans.apply_fn(f, 7) == 12
    @test HighOrderFunctionKoans.add_n([1, 2, 4, 5],  3) == [4, 5, 7, 8]
    @test HighOrderFunctionKoans.remove_multiples([10, 12, 15, 18, 20], 3) == [10, 20]
end

# using MethodKoans
# @testset "Methods" begin
# end

using DestructuringKoans
@testset "Destructuring" begin
    @test DestructuringKoans.add_separately(1+2im, 3-7im) == (4, -5)
    @test DestructuringKoans.add_coordinates((2, 3), (4, -1)) == (6, 2)
end

using MultipleDispatchKoans
@testset "Multiple Dispatch" begin
    dog = MultipleDispatchKoans.Dog("goodboi")
    cat = MultipleDispatchKoans.Cat("Sir Catcelot")
    @test MultipleDispatchKoans.hello() == "hello stranger"
    @test MultipleDispatchKoans.hello("julia") == "hello julia"
    @test MultipleDispatchKoans.pet_talk(dog) == "$(dog.name): bark"
    @test MultipleDispatchKoans.pet_talk(cat) == "$(cat.name): meow"
end

# using ValueTypeKoans
# @testset "Value Types" begin
# end

using PythonInterop
@testset "Python Interop" begin
    @test PythonInterop.py_sinpi(0) == 0
    @test round(PythonInterop.py_sinpi(1/pi), Base.Rounding.RoundToZero, digits=2) == 0.84

    pyfib = PythonInterop.get_pyfib()
    @test PythonInterop.jlfib(1, PythonInterop.jlfib) == 1
    @test PythonInterop.jlfib(5, PythonInterop.jlfib) == 5
    @test PythonInterop.jlfib(5, pyfib) == 5
    @test PythonInterop.jlfib(7, pyfib) == 13
end
