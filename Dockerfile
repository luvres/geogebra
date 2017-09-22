FROM izone/freecad:nvidia-jessie
MAINTAINER Leonardo Loures <luvres@hotmail.com>

RUN \
	cd \
	&& apt-get update \
	&& apt-get install -y \
		curl \
		gdebi-core \
		libasound2 \
  \
	&& curl http://www.geogebra.net/linux/pool/main/g/geogebra-math-calculators/geogebra-math-calculators_6.0.385.0-201709091810_amd64.deb -o geogebra.deb \
	&& gdebi -n geogebra.deb \
	&& rm geogebra.deb

