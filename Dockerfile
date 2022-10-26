FROM nginx
RUN apt-get update && apt-get install openssh-server -y
RUN systemctl enable ssh
