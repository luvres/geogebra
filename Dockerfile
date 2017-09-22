FROM izone/freecad:nvidia-jessie
MAINTAINER Leonardo Loures <luvres@hotmail.com>

RUN \
	cd \
	&& apt-get update \
	&& apt-get install -y \
		curl \
		gdebi-core \
		libxtst6 \
  \
	&& curl http://www.geogebra.net/linux/pool/main/g/geogebra5/geogebra5_5.0.387.0-563890_amd64.deb -o geogebra.deb \
	&& gdebi -n geogebra.deb \
	&& rm geogebra.deb

