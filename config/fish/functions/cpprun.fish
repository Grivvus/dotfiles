function cpprun -d "compile and run c++ src"
    command g++ -Wall -Wextra -Wpedantic -Wformat -Wsign-compare -Wtype-limits -g $argv
    command ./a.out
    command rm a.out
end
