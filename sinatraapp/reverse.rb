require 'sinatra'

get '/' do
  erb :reverse
end

post '/reverse' do
  erb :reversed
end
