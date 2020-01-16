FROM jupyter/pyspark-notebook
USER root

ADD https://repo1.maven.org/maven2/org/apache/spark/spark-sql-kafka-0-10_2.11/2.4.4/spark-sql-kafka-0-10_2.11-2.4.4.jar /usr/local/spark/jars 
ADD https://repo1.maven.org/maven2/org/apache/kafka/kafka-clients/2.4.0/kafka-clients-2.4.0.jar /usr/local/spark/jars 

RUN chmod 644 /usr/local/spark/jars/*.jar 
RUN conda install --quiet -y 'kafka-python'

ENV PYSPARK_SUBMIT_ARGS /usr/local/spark/jars/spark-sql-kafka-0-10_2.11-2.4.4.jar

ADD kernel.json /opt/conda/share/jupyter/kernels/python3/kernel.json
