#!/bin/bash

for i in kafka-1 kafka-2 kafka-3 control-center schema-registry-1 schema-registry-2 restproxy client
do
	echo "Cleaing: ------------------------------- $i -------------------------------"

    rm $i-creds/kafka.$i.keystore.pkcs12
    rm $i-creds/kafka.$i.truststore.pkcs12
    rm $i-creds/$i.p12
    rm $i-creds/$i.crt
    rm $i-creds/$i.csr

done
