from w88700126/python-docker-environment
RUN yum -y install rsync
ADD rsync /etc
RUN chmod 600 /etc/rsyncd.secrets
RUN chmod 600 /etc/rsyncd.pass
RUN echo “/usr/bin/rsync --daemon” >> /etc/rc.local