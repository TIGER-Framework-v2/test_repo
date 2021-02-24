FROM python:3.7-slim
WORKDIR /certs
COPY ./code/main.py /
COPY ./code/requirements.txt /requirements.txt
RUN pip install --no-cache-dir --requirement /requirements.txt
ENTRYPOINT ["python", "/main.py"]
