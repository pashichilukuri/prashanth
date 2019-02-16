FROM ubuntu
MAINTAINER prashanth (chp1808@gmail.com)
FROM jboss/wildfly
ADD test/my-webapp.war /opt/jboss/wildfly/standalone/deployment
RUN /opt/jboss/wildfly/bin/add-user.sh admin admin--silent
EXPOSE 8080
CMD ["/opt/jboss/wildfly/bin/standalonei.sh" "-b","0.0.0.0","-bmanagement","0.0.0.0"]


