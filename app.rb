require 'sinatra'

# Gemfile に sinatra-contrib を追加。そして下記のコードを追加すると変更後に再起動する必要がなくなる。
require 'sinatra/reloader'

get '/' do
  'Hello, world!'
end
