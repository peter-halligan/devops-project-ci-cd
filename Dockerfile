FROM python:3.7.3-stretch

WORKDIR /app

COPY .  /app/

RUN make install

EXPOSE 8081

CMD ["python", "app.py"]
