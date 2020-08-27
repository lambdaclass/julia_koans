# Julia Koans

Welcome to the Julia Koans, a set of Small exercises design to get you used to reading and writing Julia code!
These exercises are modeled on the Ruby Koans and Rustlings.

## Getting started

Install Julia in your development environment.

## Doing exercises

Clone this repo and run make, which will run the tests. You will notice that they fail immediately. You can find the tests in `tests/tests.jl`. This file contains a number of test sets. Each test set uses a different module, which can be found in the `koans` directory. Each module is located in a file with the corresponding name. The modules already have the required functions declared, but not implemented. To solve a koan, implement the function body and have it return values which make the tests pass. When you complete a test set, you can move on to the next.

If you get stuck and need to take a peek, you can find the solved koans in the `solutions` directory.

In increasing order of difficulty, we have: Arithmetic koans, Logical koans, Bitwise koans, Complex Number koans, Vector koans, Array koans, Indexing koans, Iteration koans, Python Interoperability koans, Dataframes koans, Destructuring koans, Conversion koans, Method koans, Multiple Dispatch koans, High Order Function koans.

## Contributing

If you would like to contribute exercises, fork this repo and issue a PR including the test set in `tests.jl`, the module in `koans` and the solved koan in `solutions`. Please include some documentation or commentary and Make sure the exercise goal is understandable without the solution.
