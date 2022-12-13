FROM confluentinc/cp-enterprise-kafka:5.4.9

ADD prom-jmx-agent-config.yml /usr/app/prom-jmx-agent-config.yml
ADD https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.17.2/jmx_prometheus_javaagent-0.17.2.jar /usr/app/jmx_prometheus_javaagent.jar