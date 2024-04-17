# #!/bin/bash
printf "Containers:\n---\n"
docker container ls -a

printf "\nImages:\n---\n"
docker image ls

printf "\nVolumes:\n---\n"
docker volume ls
