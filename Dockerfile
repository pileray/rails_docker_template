FROM ruby:3.2.2
ENV ROOT /app
ENV LANG C.UTF-8
ENV TZ Asia/Tokyo

WORKDIR ${ROOT}

COPY Gemfile ${ROOT}
COPY Gemfile.lock ${ROOT}

RUN apt-get update
RUN apt-get install -y \
    git
RUN bundle install

COPY . ${ROOT}

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE ${PORT}

CMD ["rails", "server", "-b", "0.0.0.0"]