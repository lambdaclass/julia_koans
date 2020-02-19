push!(LOAD_PATH, "./koans")

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
end

using StringKoans
@testset "Strings" begin
end

using ConversionKoans
@testset "Type Conversions" begin
end

using ArrayKoans
@testset "Arrays" begin
end

using VectorOperationKoans
@testset "Vector Operators" begin
end

using MultiDimensionalArrayKoans
@testset "Multi-dimensional Arrays" begin
end

using IndexingKoans
@testset "Indexing" begin
end

using IterationKoans
@testset "Iteration" begin
end

using ModuleKoans
@testset "Modules" begin
end

using StructKoans
@testset "Structs" begin
end

using UnionKoans
@testset "Unions" begin
end

using FunctionKoans
@testset "Functions" begin
end

using MethodKoans
@testset "Methods" begin
end

using DestructuringKoans
@testset "Destructuring" begin
    @test DestructuringKoans.add_separately(1+2im, 3-7im) == (4, -5)
    @test DestructuringKoans.add_coordinates((2, 3), (4, -1)) == (6, 2)
end

using MultipleDispatchKoans
@testset "Multiple Dispatch" begin
end

using ValueTypeKoans
@testset "Value Types" begin
end
