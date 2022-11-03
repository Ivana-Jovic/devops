FROM nginx
RUN apt-get update && apt-get install openssh-server -y
RUN service ssh start
