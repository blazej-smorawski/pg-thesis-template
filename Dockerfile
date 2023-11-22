FROM pandoc/latex:3.0-ubuntu

RUN apt-get update -y --fix-missing
RUN echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
RUN apt-get install -y ttf-mscorefonts-installer python3-pip plantuml
RUN fc-cache -fv
RUN python3 -m pip install pandoc-plantuml-filter
