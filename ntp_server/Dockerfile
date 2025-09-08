FROM ubuntu:24.04

# COPY ./config/rsyslog.conf /tmp/rsyslog.conf
COPY ./config/chrony.conf /tmp/chrony.conf
COPY ./startup.sh /root/startup.sh

# 必要なパッケージのインストール
RUN apt update && apt install -y \
    bash \
    vim \
    chrony \
    && rm -rf /var/lib/apt/lists/* \
    && ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
    && mv /tmp/chrony.conf /etc/chrony/chrony.conf \
    # && mv /tmp/receivedLog.conf /etc/rsyslog.d/receivedLog.conf \
    && chmod 744 /root/startup.sh
    

 
# 作業ディレクトリの設定
WORKDIR /app

# コンテナ実行時にrsyslogdを起動する
CMD ["/root/startup.sh"]