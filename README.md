## Geogebra 5
-----
### Run
```
docker run -ti --rm --name Geogebra \
--net=host \
-e DISPLAY=unix$DISPLAY \
-v /tmp/.X11-unix \
-v $HOME/.Xauthority:/root/.Xauthority \
izone/geogebra geogebra
```
### Build
```
docker build -t izone/geogebra .
```
-----
#### Geogebra 6
##### Run
```
docker run -ti --rm --name Geogebra \
--net=host \
-e DISPLAY=unix$DISPLAY \
-v /tmp/.X11-unix \
-v $HOME/.Xauthority:/root/.Xauthority \
izone/geogebra:6 geogebra-math-calculators
```
##### Build
```
docker build -t izone/geogebra:6 ./geogebra6/
```

-----
### Raspberry Pi 3
#### armhf
##### Pull image
```
docker pull izone/geogebra:armhf
```
##### Run in Raspberry Pi
```
docker run -ti --rm --name Geogebra \
--net=host \
-e DISPLAY=unix$DISPLAY \
-v /tmp/.X11-unix \
-v $HOME/.Xauthority:/root/.Xauthority \
izone/geogebra:armhf geogebra-math-calculators
```
```
```
### Docker QEMU
#### armhf in amd64
```
sudo apt-get install qemu-user-static
```
#### Run
```
docker run -ti --rm --name Geogebra \
--net=host \
-e DISPLAY=unix$DISPLAY \
-v /usr/bin/qemu-arm-static:/usr/bin/qemu-arm-static \
-v /tmp/.X11-unix \
-v $HOME/.Xauthority:/root/.Xauthority \
izone/geogebra:armhf geogebra-math-calculators
```
#### Build
```
sudo apt-get install qemu-user-static binfmt-support
sudo update-binfmts --enable qemu-arm
sudo update-binfmts --display qemu-arm 
cp /usr/bin/qemu-arm-static .
```
```
```
```
docker build -t izone/geogebra:armhf ./armhf/
```
```
```
