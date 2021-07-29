FROM ruby:2.6.5-alpine

COPY check_coverage.rb /check_coverage.rb

CMD ["ruby", "/check_coverage.rb"]
