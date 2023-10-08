FROM pandoc/latex:3.0-ubuntu

RUN apt update -y
RUN echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
RUN apt-get install -y ttf-mscorefonts-installer
RUN fc-cache -fv