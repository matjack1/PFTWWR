require 'rack'

def my_rack_method(env)
  [200, {"Content-Type" => "text/plain"}, ["method called"]]
end

server = Rack::Server.new({app: method(:my_rack_method), server: 'webrick', Port: 9888})
server.start
