
#Build

FROM maven

WORKDIR /opt/shipping

COPY pom.xml /opt/shipping/
RUN mvn  :resolve
COPY src /opt/shipping/src/
RUN mvn package