require 'nokogiri'
require 'open-uri'

doc = Nokogiri::Slop(open('http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html'))

puts "The number of occurrances of the is #{doc.text.count("the")}"
