FROM debian:11.6

RUN apt-get update \
    && apt-get install --no-install-recommends -y python3-pip rsync \
    && pip install ansible jmespath \
    && ansible-galaxy install geerlingguy.java \
    && ansible-galaxy install geerlingguy.apache \
    && ansible-galaxy install ansible-thoteam.nexus3-oss \
    && apt-get clean

WORKDIR /work

COPY . .

RUN  ansible-playbook -i inventory nexus.yml

CMD /opt/nexus-latest/bin/nexus run
