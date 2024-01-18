FROM python:alpine3.10
LABEL authors="mariappan.sivakumar"
RUN apk add --no-cache --update \
    python3 python3-dev gcc \
    gfortran musl-dev g++ \
    libffi-dev openssl-dev \
    libxml2 libxml2-dev \
    libxslt libxslt-dev \
    libjpeg-turbo-dev zlib-dev
WORKDIR /app
COPY . /app
RUN pip install pandas
RUN pip install dash
RUN pip install -r requirements.txt
EXPOSE 5000
EXPOSE 8080
CMD python ./flaskwork.py
CMD python ./Vercel.py