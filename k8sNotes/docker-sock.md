# docker sockets

there are two docker socket in a normal docker engine install,

1. unix:///home/james/.docker/desktop/docker.sock
2. unix:///var/run/docker.sock.

where the second one requires permission, so one has to add user to `docker` group 
