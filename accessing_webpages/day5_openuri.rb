require 'open-uri'

f = open('http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html')

puts "The number of occurrances of the is #{f.readlines.join.scan(/(?:^|\s+)([Tt]he)(?:\s+|$)/).size}"
