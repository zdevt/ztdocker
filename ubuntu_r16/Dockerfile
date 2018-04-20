FROM ubuntu:14.04
MAINTAINER zt
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y dialog
RUN apt-get upgrade -y
RUN apt-get update && apt install -y \
                  sudo \
                  net-tools \
                  iputils-ping \
                  htop \
                  vim \
                  libevent-dev \
                  sqlite3 \
                  libsqlite3-dev \
                  subversion \
                  git \
                  gawk \
                  python \
                  python-dev \
                  python3-dev \
                  build-essential \
                  gcc \
                  g++ \
                  make \
                  cmake \
                  autoconf \
                  sysv-rc-conf \
                  libncurses-dev \
                  libssl-dev \
                  libc6:i386 \
                  libncurses5:i386 \
                  libstdc++6:i386
RUN apt-get autoclean
RUN apt-get autoremove
#RUN mkdir -p /var/run/sshd
#RUN mkdir -p /root/.ssh
#RUN sed -ri  's/session required pam_loginuid.so/#session required pam_loginuid.so/g' /etc/pam.d/sshd
#RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config
#RUN sed -ri 's/#UsePAM no/UsePAM no/g' /etc/ssh/sshd_config
#ADD authorized_keys /root/.ssh/authorized_keys
#RUN chmod 600 /root/.ssh/authorized_keys
#ADD run.sh /run.sh
#RUN chmod 755 /run.sh
EXPOSE 22
#每个容器只能执行一条cmd命令，多条只有最后一条执行
#CMD ["service ssh start"]
