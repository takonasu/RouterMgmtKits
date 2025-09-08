#!/bin/bash

# rsyslogdの起動
/usr/sbin/rsyslogd

chmod 777 -R /app/logs


# rsyslogdはbackgourndプロセスなのでdockerが終了しないための処理を付け足す
while : ; do sleep 1; done