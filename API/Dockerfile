FROM python:3.6-slim

WORKDIR /usr/src/app

COPY . .

RUN apt-get update && apt-get install -y \
    vim \
    python3 \
    python3-pip
RUN pip3 install -r requirements.txt

EXPOSE 8000

CMD ["uvicorn", "main:app","--host", "0.0.0.0", "--port", "5000"]