#!/bin/bash

# chronydの起動
chronyd -x



# chronydはbackgourndプロセスなのでdockerが終了しないための処理を付け足す
while : ; do sleep 1; done