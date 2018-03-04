FROM statenweb/ansible:ubuntu16.04
MAINTAINER Mat Gargano <mat@statenweb.com>

RUN echo "===> Adding build prerequisites..."   && \
    apt-get update -y       					&& \
    apt-get install -y curl  && \
    curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh && bash nodesource_setup.sh && \
    apt-get install -y nodejs build-essential  ruby ruby-sass rsync build-essential git && \
    pip install ansible==2.2.0.0 && \
    npm install -g gulp bower webpack grunt



CMD [ "ansible", "--version" ]
