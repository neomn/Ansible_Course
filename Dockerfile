FROM neomn110/ansible:0.0.1

COPY ./ansible /ansible 
COPY ./files /files 

CMD ["/files/scripts/docker-cmd-script.sh"]