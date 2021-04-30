FROM ubuntu:20.04

RUN apt update && apt install cmake gcc g++ python3 wget python3-pip -y

RUN pip3 install Flask

RUN useradd -ms /bin/bash techproguser
USER techproguser
WORKDIR /home/techproguser

RUN mkdir cmake-with-flask
COPY ./ ./cmake-with-flask/
RUN cd cmake-with-flask && mkdir build && cd build && cmake .. && make -j9

ARG port
ARG host
ENV port=${port}
ENV host=${host}

CMD python3 cmake-with-flask/app.py --port ${port} --host ${host}
