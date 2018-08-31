FROM mongo:3.6

MAINTAINER Huang Jia <jiahuanged@gmail.com>

COPY startup.sh / 

RUN rm -rf /etc/localtime && ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && chmod +x startup.sh
    # apt-get update && apt-get install -y wget && apt-get install -y net-tools && apt-get autoremove && apt-get clean && apt-get autoclean 

CMD ["./startup.sh"]