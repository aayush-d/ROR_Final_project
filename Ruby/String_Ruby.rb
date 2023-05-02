#Fixed and Interpolatable strings
fixed_string = 'This is Ruby'
puts 'Fixed string         : ' + fixed_string

language = 'Ruby'

interpolate_string = "This is #{language}"
puts "Interpolate string   : #{interpolate_string}"

#Methods in string

#List of methods operable on string => puts "Methods operable on string in Ruby:\n#{"any_string".methods}"

puts "capitalize on 'ruby' : #{"ruby".capitalize}"

puts "downcase on '#{language}'   : #{language.downcase}"

puts "upcase on '#{language}'     : #{language.upcase}"

puts "reverse on '#{language}'    : #{language.reverse}"

puts "length on '#{language}'     : #{language.length}"

puts "swapcase on '#{language}'   :#{language.swapcase}"

#to_s method
int_var = 1000
puts "Class of #{int_var}        :#{int_var.class}"

str_var = int_var.to_s
puts "Class of #{str_var}        :#{str_var.class}"

#empty vs nil
puts "''.nil               :#{''.nil?}"
puts "''.empty             :#{''.empty?}"

Sentences = "This is the Ruby language. Ruby has many frameworks. Ruby also supports interactive programming."
puts "Sentences            :#{Sentences}"

puts "Sentences.sub        :#{Sentences.sub("Ruby", "Python")}"
puts "Sentences.gsub       :#{Sentences.gsub("Ruby", "Python")}"

puts

#Variable assignment
original = "Aayush"
duplicate = original
puts "Value of variable 'original' and 'duplicate              : #{original}, #{duplicate}"
original = "Abhishekh"
puts "Value of variables after changing the value of 'original': #{original}, #{duplicate}"

#Escape sequence
puts "With escape character                                    : \#{int_var}"
puts "Without escape character                                 : #{int_var}"