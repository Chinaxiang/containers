# Docker Filebeat image

Filebeat is a lightweight, open source shipper for log file data. As the next-generation Logstash Forwarder, Filebeat tails logs and quickly sends this information to Logstash for further parsing and enrichment or to Elasticsearch for centralized storage and analysis.

## Build and update process

This image is automatically built at every push of this repository and every time that the `debian:jessie` base image gets updated in order to ensure that bugfixes and security updates are immediately applied.

## Run

```bash
docker run -v /path/to/filebeat.yml:/filebeat.yml chinaxiang/filebeat:5.5.2
```

Or, you can create your own derived image, with the configuration in the image itself.

```dockerfile
FROM chinaxiang/filebeat
COPY my-config/filebeat.yml /filebeat.yml
```

## Configuration file

You can find an example of the `filebeat.yml` in the official filebeat repository: https://github.com/elastic/beats/blob/master/filebeat/filebeat.yml

And in the official docs: https://www.elastic.co/guide/en/beats/filebeat/current/filebeat-configuration.html
