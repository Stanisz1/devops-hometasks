FROM jenkins/jenkins:2.416-jdk11
USER root

RUN apt-get update \
    && apt-get install --no-install-recommends -y jq build-essential \
    && apt-get clean

ARG jenkins_user
ARG jenkins_password
ARG jenkins_plugins
ARG java_opts

ENV JENKINS_USER=$jenkins_user
ENV JENKINS_PASSWORD=$jenkins_password
ENV JENKINS_PLUGINS=$jenkins_plugins
ENV JAVA_OPTS=$java_opts

USER jenkins
ENV JAVA_OPTS=$java_opts
COPY --chown=jenkins:jenkins scripts/01_admin_user.groovy /usr/share/jenkins/ref/init.groovy.d/01_admin_user.groovy
COPY --chown=jenkins:jenkins scripts/jenkins.yaml /var/jenkins_home/jenkins.yaml
COPY --chown=jenkins:jenkins scripts/config.xml /var/jenkins_home/jobs/pipeline-job/config.xml
RUN jenkins-plugin-cli --plugins $jenkins_plugins
