#!/bin/bash
if [ "${SSH_USER}" ];
then
    if id "${SSH_USER}";
    then echo "user ${SSH_USER} already exist";
    else
        useradd -m -p $(openssl passwd -1 "${SSH_PASSWORD}") "${SSH_USER}";
        echo "create user success";
    fi
fi

service ssh start;

/bin/bash;