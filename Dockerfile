FROM python:3.12-alpine

WORKDIR /app

RUN apk add --no-cache ffmpeg

RUN mkdir -p /app/public /app/hls && \
    printf 'FFMPEG HLS SERVER OK\n' > /app/public/test.txt

EXPOSE 8080

CMD ["ffmpeg", "-hide_banner", "-loglevel", "info", "-i", "https://52d080a3e172c33fd6886a37e7288491.s21-cloudfront-net.lat/ss/premiere.txt", "-t", "10", "-f", "null", "-"]
