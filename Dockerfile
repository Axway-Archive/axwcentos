# Centos linux with Pre-requisites 

FROM centos:centos7
MAINTAINER cmanda@axway.com

# install main packages:
RUN yum -y update; yum clean all;
RUN yum -y install sudo net-tools telnet which unzip wget expect cronie; yum clean all 

#install application pre-requisites
RUN yum -y install perl perl-Data-Dumper glibc.i686 libgcc.i686 ncurses-libs.i686 libstdc++.i686 zlib.i686 libaio.i686 compat-libstdc++-33 compat-db47 libaio; yum clean all;

#setup non-root user
RUN adduser axway
RUN usermod -aG wheel axway

EXPOSE 22
