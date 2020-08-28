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

# using ComplexNumberKoans
# @testset "Complex Numbers" begin
# end

# using StringKoans
# @testset "Strings" begin
# end

# using ConversionKoans
# @testset "Type Conversions" begin
# end

# using ArrayKoans
# @testset "Arrays" begin
# end


using VectorOperationKoans
@testset "Vector Operation" begin
    @test VectorOperationKoans.vector_length([1,2,3]) == 3
    @test VectorOperationKoans.vector_length([1]) == 1
    @test VectorOperationKoans.range_1_to_n(3) == [1, 2, 3]
    @test VectorOperationKoans.range_1_to_n(10) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    @test VectorOperationKoans.vector_of_zeros(3) == [0, 0, 0]
    @test VectorOperationKoans.vector_of_zeros(9) == [0, 0, 0, 0, 0, 0, 0, 0, 0]
    @test VectorOperationKoans.vector_of_ones(3) == [1, 1, 1]
    @test VectorOperationKoans.vector_of_ones(9) == [1, 1, 1, 1, 1, 1, 1, 1, 1]
    @test VectorOperationKoans.elementwise_sum([2, 3], [3, 5]) == [5, 8]
    @test VectorOperationKoans.elementwise_sum([-2, 3], [3, -5]) == [1, -2]
    @test VectorOperationKoans.elementwise_sum([0, 3], [3, -5]) == [3, -2]
    @test VectorOperationKoans.elementwise_substraction([0, 3],[3, -5]) == [-3, 8]
    @test VectorOperationKoans.elementwise_substraction([1, 10],[40, -95]) == [-39, 105]
    @test VectorOperationKoans.scalar_vector_addition([1, 2, 3], 4) == [5, 6, 7]
    @test VectorOperationKoans.scalar_vector_addition([-10, 30], -40) == [-50, -10]
    @test VectorOperationKoans.scalar_vector_addition([-10, 30], -40) == [-50, -10]
    @test VectorOperationKoans.scalar_vector_multiplication([1, 5, 10], 4) == [4, 20, 40]
    @test VectorOperationKoans.scalar_vector_multiplication([0, -3, 5, 6], 3) == [0, -9, 15, 18]
    @test VectorOperationKoans.scalar_product([1, 2], [3, 4]) == 11
    @test VectorOperationKoans.scalar_product([-4, 6], [6, 8]) == 24
    @test VectorOperationKoans.norm_l2([1, 1]) == sqrt(2)
    @test VectorOperationKoans.norm_l2([4, -10]) == sqrt(116)
    @test VectorOperationKoans.euclidean_distance([1, 3], [3, 5]) == sqrt(8)
    @test VectorOperationKoans.euclidean_distance([3, 5, 8], [3, -5, 0]) == sqrt(164)
end

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
