FROM nginx
RUN sudo apt-get install openssh-server
RUN sudo systemctl enable ssh
CMD sudo systemctl start ssh
