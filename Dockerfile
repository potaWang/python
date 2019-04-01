FROM python:3.7-slim
LABEL maintainer="pota <wrpota@gmail.com>"

ENV TZ="Asia/Shanghai"
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN mkdir /code /home/workspace/
WORKDIR /code
ADD ./requirements.txt /code/
ADD analyze.py /home/workspace/
RUN pip install -U -r requirements.txt
CMD ["bash"]