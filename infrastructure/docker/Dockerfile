FROM node:16.16.0-bullseye-slim

# パイプ連結時、エラーなら終了する
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apt update && apt install -y\
  curl\
  default-jre\
  sudo\
  && apt autoremove && apt autoclean

WORKDIR /opt/app/src
EXPOSE 3000
EXPOSE 4000
EXPOSE 4400
EXPOSE 4500
EXPOSE 5000
EXPOSE 5001
EXPOSE 6006
EXPOSE 8080
EXPOSE 8085
EXPOSE 9099
EXPOSE 9199
EXPOSE 9229

# ツール類
RUN echo "alias ll='ls -lahF --color=auto'" >> ~/.bashrc
RUN curl -sL https://firebase.tools | bash
