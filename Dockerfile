FROM shoothzj/base

WORKDIR /opt

RUN wget https://dlcdn.apache.org/drill/1.20.3/apache-drill-1.20.3.tar.gz  && \
mkdir -p drill && \
tar -xf apache-drill-1.20.3.tar.gz -C drill --strip-components 1 && \
rm -rf apache-drill-1.20.3.tar.gz

ENV DRILL_HOME /opt/drill

WORKDIR /opt/drill
