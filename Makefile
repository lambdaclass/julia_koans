
test:
	julia --color=yes tests/tests;

test_solutions:
	julia --color=yes tests/solutions/tests_solutions.jl
