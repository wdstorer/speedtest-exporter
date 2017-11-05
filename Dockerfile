FROM debian:latest

RUN apt-get update && apt-get install -y \
  python-pip

RUN mkdir /app
COPY run-speedtest.py /app/
RUN pip install speedtest-cli
RUN pip install prometheus-client

EXPOSE 9104
ENTRYPOINT ["/app/run-speedtest.py"]

