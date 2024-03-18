FROM python:alpine3.19

ENV REDIS_HOST=localhost

COPY . /app/

WORKDIR /app/

RUN apk update && apk add redis curl

RUN pip install --no-cache-dir -r requirements.txt && pip install --upgrade flask werkzeug

EXPOSE 5000

CMD ["./giropops-start.sh"]

HEALTHCHECK --timeout=2s CMD curl -f localhost:5000 || exit 1

