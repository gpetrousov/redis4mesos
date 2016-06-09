## Buildfile for the Redis server.
## Email: petrousov@gmail.com
## Date: 26/01/2016

## 1) docker build -t centos-redis .

FROM centos

MAINTAINER Ioannis Petrousov


#STANDARD
RUN yum -y install wget
RUN yum -y install net-tools.x86_64

ADD files/bootstrap.sh /opt/

#Set this to your time
RUN ln -f -s /usr/share/zoneinfo/EET /etc/localtime
RUN yum -y groupinstall 'Development Tools'
RUN cd /opt/ ; wget http://download.redis.io/releases/redis-3.0.5.tar.gz
RUN cd /opt/ ; tar xzf redis-3.0.5.tar.gz
RUN mv /opt/redis-3.0.5 /opt/redis
RUN cd /opt/redis ; make && make install
