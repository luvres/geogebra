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
```
docker build -t izone/geogebra:6 ./geogebra6/
```
##### Run
```
docker run -ti --rm --name Geogebra \
--net=host \
-e DISPLAY=unix$DISPLAY \
-v /tmp/.X11-unix \
-v $HOME/.Xauthority:/root/.Xauthority \
izone/geogebra geogebra-math-calculators
```
