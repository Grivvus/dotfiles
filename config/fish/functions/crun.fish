function crun -d "compile and run C sources"
    command gcc -Wall -Wextra -Wpedantic -Wformat -Wsign-compare -Wtype-limits -g $argv -o /tmp/crun.out 
    and /tmp/crun.out
end
