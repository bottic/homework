FROM python:3.9

ENV PYTHONUNBUFFERED=1

WORKDIR /usr/src/stock_products

COPY ./requirements.txt /usr/src/stock_products/requirements.txt
RUN pip3 install --no-cache-dir --upgrade -r /usr/src/stock_products/requirements.txt
COPY . /usr/src/stock_products



EXPOSE 8000
ENTRYPOINT ["python", "manage.py"]
CMD ["runserver", "0.0.0.0:8000"]