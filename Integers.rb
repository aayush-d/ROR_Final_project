puts "Integer division 10/4: #{10/4}"
puts "Decimal division 10/4: #{10.0/4}"
puts "Decimal division 10/4: #{10/4.to_f}"

#String concatenation using integers
puts '5' * 2
puts "-" * 10

#.times method
puts "Ten random numbers b/w 0 to 29"
10.times {puts rand(30)}

#String to integer or float
puts "\"5\" to int  : #{"5".to_i}"
puts "\"5\" to float: #{"5".to_f}"

puts "\" \" to int   : #{"".to_i}"
puts "\" \" to float : #{"".to_f}"

puts "0 == 0.0     : #{0==0.0}" 