DIRECTORY=$(pwd)/data
if [ ! -d "$DIRECTORY" ]; then
   echo "run ./init.sh first"`
   exit 1
fi
if [ -z "$(ls -A $DIRECTORY)" ]; then
   echo "run ./init.sh first"`
   exit 1
fi

docker run -dt --restart=unless-stopped -v ${DIRECTORY}:/mnt --name devpi -p 3141:3141 devpi
