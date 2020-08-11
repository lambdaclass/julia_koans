push!(LOAD_PATH, "./koans")

using Test


using VectorOperationKoans
@testset "Vector Operation" begin
    @test VectorOperationKoans.vector_lenght([1,2,3]) == 3
    @test VectorOperationKoans.vector_lenght([1]) == 1
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

