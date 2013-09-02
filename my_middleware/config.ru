require './my_middleware.rb'
use MyMiddleware::Hello
run Proc.new{ |env| [200, {"Content-Type" => "text/plain"}, ["Try visiting '/hello'"]] }
