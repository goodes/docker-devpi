mkdir $(pwd)/data
docker run -dt --restart=unless-stopped -v $(pwd)/data:/mnt --name devpi -p 3141:3141 devpi
