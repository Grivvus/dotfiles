function crun -d "compile and run C sources"
    command gcc -Wall -Wextra -Wpedantic -Wformat -Wsign-compare -Wtype-limits -g $argv
    command ./a.out
end
