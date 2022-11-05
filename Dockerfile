FROM python:3.10-bullseye

RUN python3 -m pip install ansible

RUN ansible --version

RUN mkdir /ansible

WORKDIR /ansible

VOLUME [ "/ansible" ]

ENV ANSIBLE_CONFIG="/ansible/ansible.cfg"

ENV ANSIBLE_HOST_KEY_CHECKING=False

ENTRYPOINT [ "ansible-playbook" ]