#!/bin/bash

echo
echo "**************************************************************"
echo "*                                                            *"
echo "*    Script v0.1.0 by Artit Kiuwilai (first087@gmail.com)    *"
echo "*                                                            *"
echo "**************************************************************"

if [ -z $NH_REGION ]; then
    echo "\$NH_REGION not found... Default to hk."
    NH_REGION=usa
fi

if [ -z $BTC_ADDR ]; then
    echo "\$BTC_ADDR not found.... Default to dev address. Thank!"
    BTC_ADDR=3Ecm1ozXzTgsA9ak5xFB5g35nWFrTD4S9f
fi

if [ -z $WORKER_NAME ]; then
    echo "\$WORKER_NAME not found. Default to hostname"
    WORKER_NAME=$(hostname)
fi

if [ -z $THREAD ]; then
    echo "\$THREAD not found...... Default to total CPU core"
    THREAD=$(nproc)
fi

echo
echo "==================== SUMMARY ===================="
echo "\$NH_REGION   : ${NH_REGION}"
echo "\$BTC_ADDR    : ${BTC_ADDR}"
echo "\$WORKER_NAME : ${WORKER_NAME}"
echo "\$THREAD      : ${THREAD}"
echo
echo "====================  START  ===================="

./nheqminer_cpu -l "daggerhashimoto.auto.nicehash.com:9200" -u "${BTC_ADDR}.${WORKER_NAME}" -t ${THREAD}

