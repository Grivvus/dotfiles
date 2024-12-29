function cpprun -d "compile and run c++ src"
    g++ -Wall -Wextra -Wpedantic -Wformat -Wsign-compare -Wtype-limits -g $argv
    ./a.out
end
