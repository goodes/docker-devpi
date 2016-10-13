Simple script to make local version of devpi container.

```
docker build . -t devpi
docker run -dt --restart=unless-stopped -v $(pwd)/data:/mnt --name devpi -p 3141:3141 devpi
```

or 

```
./build.sh
./start.sh
mkdir ~/.pip
cp pip.conf ~/.pip/pip.conf
```


where pip.conf contains

```
[global]
index-url = http://localhost:3141/root/pypi/+simple/
```

