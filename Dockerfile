FROM nginx
RUN apt-get install openssh-server
RUN systemctl enable ssh
CMD systemctl start ssh
