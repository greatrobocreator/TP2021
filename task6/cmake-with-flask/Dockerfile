FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && apt install cmake gcc g++ python3 wget python3-pip -y

RUN pip3 install Flask

RUN useradd -ms /bin/bash techproguser
USER techproguser
WORKDIR /home/techproguser

#RUN mkdir cmake-with-flask
COPY ./ ./
#RUN cd cmake-with-flask && mkdir build && cd build && cmake .. && make -j9
RUN mkdir build && cd build && cmake .. && make -j9

#RUN ls
#RUN ls bin

ARG port=5000
ARG host=0.0.0.0
ENV port=${port}
ENV host=${host}

#RUN echo ${port}
#RUN echo ${host}

CMD python3 app.py --port ${port} --host ${host}
