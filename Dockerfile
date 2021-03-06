FROM python:3.8.2
WORKDIR ./
ENV FLASK_APP hello.py
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD ["flask", "run"]