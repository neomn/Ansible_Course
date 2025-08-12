FROM neomn110/ansible:0.0.1

RUN apk update && apk add \
    git
    
COPY ./ansible /ansible 
COPY ./files /files 

CMD ["/files/scripts/docker-cmd-script.sh"]