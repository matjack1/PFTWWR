require 'rack'

Rack::Server.new(:config => 'config.ru', :server => 'webrick', :Port => 9292).start
