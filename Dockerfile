FROM python:3.12-alpine

WORKDIR /app

RUN mkdir -p /app/public

EXPOSE 8080

CMD ["python", "-m", "http.server", "8080", "--directory", "/app/public", "--bind", "0.0.0.0"]
