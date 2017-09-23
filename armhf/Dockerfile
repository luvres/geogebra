FROM arm32v7/debian:jessie-slim
MAINTAINER Leonardo Loures <luvres@hotmail.com>

# sudo apt-get install qemu-user-static binfmt-support
# sudo update-binfmts --enable qemu-arm
# sudo update-binfmts --display qemu-arm 
# cp /usr/bin/qemu-arm-static .
COPY qemu-arm-static /usr/bin/qemu-arm-static

RUN \
	cd \
	&& apt-get update \
	&& apt-get install -y \
		curl \
		gdebi-core \
		libasound2 \
		libx11-xcb1 \
  \
	&& curl http://archive.raspberrypi.org/debian/pool/main/g/geogebra-math-calculators/geogebra-math-calculators_6.0.385.0-201709091810_armhf.deb -o geogebra.deb \
	&& gdebi -n geogebra.deb \
  \
  # Clean
	&& rm geogebra.deb \
	&& apt-get remove -y \
		curl \
		gdebi-core \
	&& apt-get autoremove -y

