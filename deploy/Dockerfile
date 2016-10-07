FROM teamidefix/ansible
MAINTAINER Francesco Bruni <brunifrancesco02@gmail.com>

ADD inventory /etc/ansible/hosts
ADD provision.yml provision.yml
ADD ansible.cfg /etc/ansible/ansible.cfg
ADD provision.yml provision.yml

RUN apt-get update
RUN apt-get install -y software-properties-common nano git nginx

RUN ansible-playbook provision.yml -c local

ADD run.sh run.sh
RUN chmod u+x run.sh
CMD ["./run.sh"]