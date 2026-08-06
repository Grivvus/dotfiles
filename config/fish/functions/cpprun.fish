function cpprun -d "compile and run c++ src"
    command g++ -Wall -Wextra -Wpedantic -Wformat -Wsign-compare -Wtype-limits -g $argv -o /tmp/cpprun.out
    and /tmp/cpprun.out
end
