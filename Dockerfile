FROM python:3.12-alpine

WORKDIR /app

RUN apk add --no-cache ffmpeg

RUN mkdir -p /app/public /app/hls && \
    printf 'FFMPEG HLS SERVER OK\n' > /app/public/test.txt

EXPOSE 8080

CMD ["python", "-m", "http.server", "8080", "--directory", "/app/public", "--bind", "0.0.0.0"]
