FROM selenium/standalone-chrome:3.141.59
LABEL maintainer="icarrera@seiel.com.ar"

RUN echo `uname -a` \
 && cat /etc/issue \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common \
     build-essential git \
 && rm -rf /var/lib/apt/lists/* \
 && gem install --no-doc --no-ri bundler

COPY Gemfile* /app/

RUN cd /app && bundle install --jobs 20

CMD ["irb"]
