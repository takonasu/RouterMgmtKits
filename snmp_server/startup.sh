#!/bin/bash

# snmptrapdの起動
/usr/sbin/snmptrapd -Lf /app/logs/snmptrapd.log -f

chmod 777 -R /app/logs


# snmptrapdはbackgourndプロセスなのでdockerが終了しないための処理を付け足す
while : ; do sleep 1; done