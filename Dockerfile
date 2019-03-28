FROM atlassian/confluence-server:6.5.1
COPY ./mysql/connector/mysql-connector-java-5.1.47.jar /opt/atlassian/confluence/confluence/WEB-INF/lib