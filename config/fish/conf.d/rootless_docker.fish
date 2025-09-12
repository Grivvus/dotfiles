if not set -q DOCKER_HOST
    set -gx DOCKER_HOST unix:///run/user/(id -u)/docker.sock
end
