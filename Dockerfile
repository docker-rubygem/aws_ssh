FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.7

RUN gem install aws_ssh --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["aws_ssh_generate"]
CMD ["--help"]
