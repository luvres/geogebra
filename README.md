## Geogebra 6
-----
### Run
```
docker run -ti --rm --name Geogebra \
--net=host \
-e DISPLAY=unix$DISPLAY \
-v /tmp/.X11-unix \
-v $HOME/.Xauthority:/root/.Xauthority \
izone/geogebra geogebra-math-calculators
```
### Build
```
docker build -t izone/geogebra .
```
