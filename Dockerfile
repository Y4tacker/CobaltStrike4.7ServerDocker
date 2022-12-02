FROM y4tacker/csserver47

RUN chmod +x /tmp/TeamServerImage
RUN chmod +x /tmp/teamserver

WORKDIR /tmp
CMD ["bash","-c","./teamserver $(cat /etc/hosts|awk 'END { print $1 }') 123456"]