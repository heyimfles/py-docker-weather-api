FROM python:3.11.17-alpine3.24
LABEL maintainer="aleksacat13@gmail.com"

WORKDIR app/

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "app/main.py"]