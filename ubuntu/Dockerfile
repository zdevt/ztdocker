FROM ubuntu
MAINTAINER zt
ENV DEBIAN_FRONTEND noninteractive
RUN apt update
RUN apt install -y apt-utils
RUN apt install -y dialog
RUN apt upgrade -y
RUN apt update && apt install -y \
                  sudo net-tools iputils-ping htop ssh \
                  vim gcc g++ libevent-dev sqlite3 \
                  libsqlite3-dev subversion git make 
                  cmake autoconf python build-essential python-dev \
                  python3-dev sysv-rc-conf bsdtar u-boot-tools
#RUN apt install -y gawk libncurses-dev libssl-dev 
#RUN apt install -y libc6:i386 libncurses5:i386 libstdc++6:i386
RUN apt autoclean
RUN apt autoremove
EXPOSE 22
#每个容器只能执行一条cmd命令，多条只有最后一条执行
#CMD ["service ssh start"]
