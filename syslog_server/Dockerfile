FROM ubuntu:24.04

COPY ./config/rsyslog.conf /tmp/rsyslog.conf
COPY ./config/receivedLog.conf /tmp/receivedLog.conf
COPY ./startup.sh /root/startup.sh

# 必要なパッケージのインストール
RUN apt update && apt install -y \
    bash \
    vim \
    rsyslog \
    && rm -rf /var/lib/apt/lists/* \
    && ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
    && mv /tmp/rsyslog.conf /etc/rsyslog.conf \
    && mv /tmp/receivedLog.conf /etc/rsyslog.d/receivedLog.conf \
    && chmod 744 /root/startup.sh
    

 
# 作業ディレクトリの設定
WORKDIR /app

# コンテナ実行時にrsyslogdを起動する
CMD ["/root/startup.sh"]