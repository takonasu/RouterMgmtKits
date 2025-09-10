FROM ubuntu:24.04

COPY ./config/snmptrapd.conf /tmp/snmptrapd.conf
# COPY ./config/receivedLog.conf /tmp/receivedLog.conf
COPY ./startup.sh /root/startup.sh

# 必要なパッケージのインストール
RUN apt update && apt install -y \
    bash \
    vim \
    snmp \
    snmptrapd \
    && rm -rf /var/lib/apt/lists/* \
    && ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
    && mv /tmp/snmptrapd.conf /etc/snmp/snmptrapd.conf \
    # && mv /tmp/receivedLog.conf /etc/rsyslog.d/receivedLog.conf \
    && chmod 744 /root/startup.sh
    

 
# 作業ディレクトリの設定
WORKDIR /app

# コンテナ実行時にsnmptrapdを起動する
CMD ["/root/startup.sh"]