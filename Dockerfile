FROM python:alpine3.19
COPY . /app
WORKDIR /app
RUN pip install --no-cache-dir -r requirements.txt && pip install --upgrade flask werkzeug
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]
HEALTHCHECK --timeout=2s CMD curl -f localhost:5000 || exit 1
