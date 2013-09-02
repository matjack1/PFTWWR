rack404 = lambda do |env|
  if env['REQUEST_PATH'] == '/'
    [200, {'Content-Type' => 'text/plain'}, ["OK!"]]
  else
    [404, {'Content-Type' => 'text/plain'}, ["NOT OK!"]]
  end
end

run rack404
