
jlext = .jl
test:

	read -p "Enter file name: " file; \
	julia --color=yes tests/user_koans/$${file}$(jlext);

test_solutions:
	julia --color=yes tests/solutions/tests_solutions.jl
