FROM ruby:2.6.5

RUN apt-get update -qq && apt-get install -y nodejs

ENV LANG C.UTF-8
ENV APP_ROOT /app

WORKDIR $APP_ROOT

COPY Gemfile* ./

RUN gem install bundler && bundle

COPY . .

EXPOSE 4567

CMD ["bundle", "exec", "middleman", "server"]
