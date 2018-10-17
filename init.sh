mkdir -p $(pwd)/data
docker run --rm -t -v $(pwd)/data:/mnt devpi --serverdir /mnt --init
