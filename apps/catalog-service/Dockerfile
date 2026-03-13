FROM python:3.11-slim

WORKDIR /app

COPY main.py /app/main.py

RUN pip install --no-cache-dir flask gunicorn

EXPOSE 5000

CMD ["gunicorn", "-b", "0.0.0.0:5000", "main:app"]
