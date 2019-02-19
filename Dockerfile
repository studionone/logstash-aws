FROM docker.elastic.co/logstash/logstash:6.5.1

# RUN logstash-plugin install logstash-input-s3
# RUN logstash-plugin install logstash-filter-csv
# RUN logstash-plugin install logstash-codec-line
# RUN logstash-plugin install logstash-filter-json
# RUN logstash-plugin install logstash-codec-multiline
# RUN logstash-plugin install logstash-filter-mutate
RUN logstash-plugin install logstash-output-amazon_es


CMD ["-f", "/opt/es.conf"]

