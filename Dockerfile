FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && apt-get upgrade -y && apt-get install build-essential -y && \
    apt-get install cmake -y && apt-get install git -y && apt-get install libgtest-dev -y && \
    apt-get install gcovr -y && apt-get install valgrind -y && apt-get install cppcheck -y && \
    apt-get install clang-tidy -y

#CMD ["sleep", "infinity"]
