require 'net/http'

uri = URI('http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html')

content = Net::HTTP.get(uri)

puts "The number of occurrances of the is #{content.count("the")}"
