FROM python:3.7-slim
WORKDIR /certs
COPY ./code/main.py /
COPY ./code/requirement.txt /requirement.txt
RUN pip install --no-cache-dir --requirement /requirement.txt
ENTRYPOINT ["python", "/main.py"]
