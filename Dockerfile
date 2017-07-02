# Docker for Tex Live
# current version : Tex Live 2017
FROM phusion/baseimage

LABEL version="2 july 2017"

RUN apt-get update && apt-get install -y ghostscript xz-utils wget bsdtar perl && \
    apt-get clean

WORKDIR /home/install-tl-unx

ADD custom.profile .

RUN wget -nv -O install-tl-unx.tar.gz http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz && \
    tar -xzf install-tl-unx.tar.gz --strip-components=1 && \
    ./install-tl --profile custom.profile && \
    ln -s /usr/local/texlive/latest/bin/x86_64-linux /opt/texbin && \
    rm -rf /usr/local/texlive/latest/texmf-dist/doc/ && \
    rm -rf /home/install-tl-unx

WORKDIR /data

ENV PATH $PATH:/usr/local/texlive/latest/bin/x86_64-linux

CMD ["/bin/bash"]    
    