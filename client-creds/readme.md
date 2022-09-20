
Producer Configuration:

schema='{
    "type":"record",
    "namespace": "example.avro",
    "name":"user",
    "fields":[{"name":"name","type":"string"},
              {"name":"favorite_number","type":"int"}]
  }' && \
kafka-avro-console-producer --bootstrap-server kafka-1-external:19093 \
    --topic users \
    --producer.config ~/sr/client-creds/client-ssl.properties \
    --property schema.registry.url=https://schema-registry-1:18085 \
    --property schema.registry.ssl.truststore.location=/home/training/sr/client-creds/kafka.client.truststore.pkcs12 \
    --property schema.registry.ssl.truststore.password=confluent \
    --property basic.auth.credentials.source=USER_INFO \
    --property basic.auth.user.info=barney:confluent \
    --property value.schema="${schema}"

    consumer configuration

    kafka-avro-console-consumer --bootstrap-server kafka-1-external:19093 \
    --topic users \
    --from-beginning \
    --consumer.config ~/sr/client-creds/client-ssl.properties \
    --property schema.registry.url=https://schema-registry-1:18085 \
    --property schema.registry.ssl.truststore.location=/home/training/sr/client-creds/kafka.client.truststore.pkcs12 \
    --property schema.registry.ssl.truststore.password=confluent \
    --property basic.auth.credentials.source=USER_INFO \
    --property basic.auth.user.info=barney:confluent