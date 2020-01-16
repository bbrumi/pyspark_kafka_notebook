## Description

With this image you can build a Docker image which can be used to connect to the Kafka cluster described on the Confluent (example)[https://docs.confluent.io/current/quickstart/ce-docker-quickstart.html] page.
The image relies on the jupyter/pyspark-notebook image, which has Jupyter and Spark installed.

## Build and push to Dockerhub

docker build -t pyspark_kafka_notebook .
docker tag pyspark_kafka_notebook  bbrumi/pyspark_kafka_notebook 
docker push bbrumi/pyspark_kafka_notebook
