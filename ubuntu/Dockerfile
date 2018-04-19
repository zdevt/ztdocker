FROM ubuntu
MAINTAINER nil (null)
ENV DEBIAN_FRONTEND noninteractive
RUN apt update
RUN apt install -y apt-utils
RUN apt install -y dialog
RUN apt upgrade -y
RUN apt install -y sudo net-tools iputils-ping htop
RUN apt install -y ssh vim gcc g++ libevent-dev sqlite3 libsqlite3-dev
RUN apt autoclean
RUN apt autoremove
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
#CMD ["/run.sh"]
