FROM resin/armv7hf-debian
MAINTAINER Shaun Mulligan <shaun@resin.io>

RUN apt-get update && apt-get -y install wget git

RUN wget --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u101-b13/jdk-8u101-linux-arm32-vfp-hflt.tar.gz && \
    mkdir /opt/jdk && \
    tar -zxf jdk-8u101-linux-arm32-vfp-hflt.tar.gz -C /opt/jdk && \
    update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.8.0_101/bin/java 100 && \
    update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.8.0_101/bin/javac 100 && \
    rm -rf jdk-8u101-linux-arm32-vfp-hflt.tar.gz

ENV JAVA_HOME /opt/jdk/jdk1.8.0_101/

RUN wget http://www-eu.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz && \
    tar -zxf apache-maven-3.3.9-bin.tar.gz -C /opt/ && \
    rm -rf apache-maven-3.3.9-bin.tar.gz

ENV PATH /opt/apache-maven-3.3.9/bin:$PATH

RUN cd opt && \
    git clone https://github.com/iqrfsdk/resin-demo-apps.git resin-demo-apps

WORKDIR /opt/resin-demo-apps/resin-open-gateway

RUN mvn clean install

COPY bin ./
COPY target/open-gateway-0.1.0.jar bin/

CMD cd bin && ./run-og.sh

