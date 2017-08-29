FROM r-base:latest

MAINTAINER Tanmai Gopal "tanmaig@hasura.io"

RUN apt-get update && apt-get install -y \
    sudo \
    gdebi-core \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev/unstable \
    libxt-dev \
    libssl-dev \
    curl


RUN apt-get install -y gnupg2

RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - && apt-get install -yf nodejs npm

# Download and install shiny server
RUN wget --no-verbose https://s3.amazonaws.com/rstudio-shiny-server-os-build/ubuntu-12.04/x86_64/VERSION -O "version.txt" && \
    VERSION=$(cat version.txt)  && \
    wget --no-verbose "https://s3.amazonaws.com/rstudio-shiny-server-os-build/ubuntu-12.04/x86_64/shiny-server-$VERSION-amd64.deb" -O ss-latest.deb && \
    gdebi -n ss-latest.deb && \
    rm -f version.txt ss-latest.deb

RUN R -e "install.packages(c('googleVis','tm.plugin.sentiment','shiny', 'rmarkdown', 'tm', 'wordcloud', 'memoise','RColorBrewer','rJava','tm.plugin.webmining','devtools','rHighcharts','corrplot'), repos='http://cran.rstudio.com/')"

COPY /myapp/www /srv/shiny-server/www
COPY /RData /srv/shiny-server/

WORKDIR /srv/shiny-server/www

RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm install
RUN R -e 'library(devtools);install_github("rHighcharts", "metagraf")'

COPY shiny-server.conf  /etc/shiny-server/shiny-server.conf
EXPOSE 80
COPY shiny-server.sh /usr/bin/shiny-server.sh
COPY /myapp /srv/shiny-server


CMD ["/usr/bin/shiny-server.sh"]
