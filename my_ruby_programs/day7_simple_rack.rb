require 'rack'

def rack_method(env)
  rack_ret = [200, {"Content-Type" => "text/plain"}, ["Command line argument you typed was: #{ARGV[0]}"]]
  puts rack_ret
  rack_ret
end

Rack::Server.new({ app: method(:rack_method), server: 'webrick', Port: 8500}).start
