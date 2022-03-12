# frozen_string_literal: true

require 'sinatra'
require 'dotenv'
Dotenv.load

configure do
  set :database, {
    adapter: 'postgresql',
    encoding: 'utf8',
    host: ENV['DB_HOST'],
    database: ENV['DB_NAME'],
    username: ENV['DB_USERNAME'],
    password: ENV['DB_PASSWORD']
  }
end
