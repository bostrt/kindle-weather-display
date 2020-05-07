FROM alpine

ENV TZ America/Denver

RUN apk add pngcrush librsvg busybox-extras ttf-dejavu python2 tzdata

RUN mkdir /app /www

COPY weather-script.sh /app/weather-script.sh
COPY weather-script.py /app/weather-script.py
COPY weather-script-preprocess.svg /app/weather-script-preprocess.svg

ENTRYPOINT ["/app/weather-script.sh"]
