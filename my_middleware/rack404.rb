require 'rack'
rack_app = lambda do |env|

  if env['REQUEST_PATH'] == '/'
    Rack::Response.new.finish do |res|
      res['Content-Type'] = 'text/plain'
      res.status = 200
      str = "OK!"
      res.write str
    end
  else
    Rack::Response.new.finish do |res|
      res['Content-Type'] = 'text/plain'
      res.status = 400
      str = "NOT OK!"
      res.write str
    end
  end
end

Rack::Server.new({app: rack_app, Port: 9292, server: 'webrick'}).start
