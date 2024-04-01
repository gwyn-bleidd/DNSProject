# 
FROM python:3.9

# 
WORKDIR /code

RUN apt update \
  && apt install -y \
  dnsutils

# 
COPY ./requirements.txt /code/requirements.txt

# 
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# 
COPY ./app /code/app

#COPY ./resolv.conf /etc/resolv.conf

# 
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
