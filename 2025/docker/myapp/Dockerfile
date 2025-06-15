FROM python:3.12-slim AS builder

WORKDIR /app


RUN apt-get update && apt-get install -y --no-install-recommends gcc


COPY requirements.txt .
RUN pip install --upgrade pip && pip install --prefix=/install -r requirements.txt


COPY . .


FROM python:3.12-slim

WORKDIR /app


COPY --from=builder /install /usr/local


COPY --from=builder /app /app

EXPOSE 5000


CMD ["python", "app.py"]

