require 'sinatra'

# Gemfile に sinatra-contrib を追加。そして下記のコードを追加すると変更後に再起動する必要がなくなる。
require 'sinatra/reloader'

get '/' do
  'Hello, world!'
end

get '/path/to' do
  "this is [/path/to]"
end

# 'http://localhost:4567/test.html' にアクセスすると、'test.html' が表示される。

# 'http://localhost:4567/hello/Alice' にアクセスすると、'Hello, Alice. How are you?' が表示される。
get '/hello/*' do |name|
  "Hello, #{name}. How are you?"
end

# 'http://localhost:4567/erb_template_page' にアクセスすると現在時刻が表示される。
get '/erb_template_page' do
  erb :erb_template_page
end
