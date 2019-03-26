# salt-master-docker
Dockerized salt-master

docker run -d -t  \
    -p 4505:4505 \
    -p 4506:4506 \
    -p 8000:8000 \
    -v /srv/docker/salt:/srv/salt \
    -v /srv/docker/salt/pki:/etc/salt/pki \
    -v /srv/docker/salt/master.d:/etc/salt/master.d \
    --name salt-master \
    --restart unless-stopped awlnx/salt-master
