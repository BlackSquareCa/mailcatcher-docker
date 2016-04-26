FROM blacksquare/ruby:2.3

RUN gem install mailcatcher --no-rdoc --no-ri

EXPOSE 25 80

CMD ["mailcatcher", "--smtp-ip=0.0.0.0", "--smtp-port=25", "--http-ip=0.0.0.0", "--http-port=80", "-f"]
