require 'logger'
rack_app = Rack::Builder.new do
  use Rack::CommonLogger
  Logger.new('rack.log')

  map '/' do
    run Proc.new {|env| [200, {"Content-Type" => "text/plain"}, ["Public page"]]}
  end

  map '/secret' do
    use Rack::Auth::Basic, "Restricted Area" do |user, password|
      user == 'super' && password == 'secret'
    end

    map '/' do
      run Proc.new {|env| [200, {"Content-Type" => "text/plain"}, ["Secret page"]]}
    end

    map '/files' do
      run Proc.new {|env| [200, {"Content-Type" => "text/plain"}, ["Secret filesss"]]}
    end
  end
end

Rack::Server.new({app: rack_app, Port: 9292, server: 'webrick'}).start
