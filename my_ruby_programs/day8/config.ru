rack_lambda = lambda do |env|
  ret_val = [200, {"Content-Type" => "text/plain"}, ["Command line argument you typed was: #{ARGV[0]}"]]
  puts ret_val
  ret_val
end

run rack_lambda
