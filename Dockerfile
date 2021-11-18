FROM csw-docker-registry/csw-airfcms-ubuntu

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && apt-get upgrade -y && apt-get install build-essential -y && \
apt-get install cmake -y && apt-get install git -y && apt-get install libgtest-dev && \
apt-get install gcovr && apt-get install valgrind && apt-get install cppcheck

#CMD ["sleep", "infinity"]
