FROM ubuntu
MAINTAINER zt
ENV DEBIAN_FRONTEND noninteractive
RUN apt update
RUN apt install -y apt-utils
RUN apt update
RUN apt upgrade -y
RUN apt install -y man-db
RUN bash -c 'yes | unminimize'
RUN apt install -y dialog
RUN apt install -y sudo net-tools iputils-ping htop ssh
RUN apt install -y vim gcc g++ libevent-dev sqlite3
RUN apt install -y libsqlite3-dev subversion git make
RUN apt install -y cmake autoconf python build-essential python-dev
RUN apt install -y python3-dev u-boot-tools
RUN apt install -y gawk libncurses-dev libssl-dev 
RUN apt install -y bison flex texinfo hgsubversion whois
RUN apt install -y libncurses5-dev zlib1g-dev gettext
RUN apt install -y gcc-arm-linux-gnueabihf
RUN apt install -y g++-arm-linux-gnueabihf
RUN apt install -y gdb-multiarch
RUN apt install -y gcc-arm-none-eabi
RUN apt install -y xinetd telnetd astyle
RUN apt install -y telnet dos2unix cscope ctags
RUN apt install -y language-pack-zh-hans
RUN apt install -y fonts-droid-fallback ttf-wqy-zenhei ttf-wqy-microhei 
RUN apt install -y fonts-arphic-ukai fonts-arphic-uming
RUN apt install -y llvm clang openocd
ADD environment /etc/
ADD profile /etc/
ADD local /var/lib/locales/supported.d/
RUN bash -c 'locale-gen'
ADD telnet /etc/xinetd.d/
ADD sshd_config /etc/ssh/
ADD ssh.sh /root/
ADD vimrc /root/.vimrc
ADD bashrc /root/.bashrc
ADD vim.tlz /root/
EXPOSE 22
EXPOSE 23
RUN apt autoclean
RUN apt autoremove
#docker build -t ubuntu:dev .
#passwd  dev
