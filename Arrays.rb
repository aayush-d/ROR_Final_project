#Array from range
x = 1..10
z = x.to_a.shuffle
x.to_a.shuffle!

print "x: #{x}\n"
print "z: #{z}\n"

alphabets = ("a".."z").to_a
print "Alphabets: #{alphabets}\n"

alphabets.reverse!
print "Alphabets: #{alphabets}\n"

puts
dummy = (1..10).to_a
print "Dummy array first element                       : #{dummy.first}\n"
print "Dummy array last element                        : #{dummy.last}\n"
print "Dummy array elements                            : #{dummy}\n"
print "Dummy array after adding 0 using unshift method : #{dummy.unshift(0)}\n"
print "Dummy array after adding 0 using push method    : #{dummy.push(0)}\n"
print "Dummy array after adding 0 using shovel operator: #{dummy<<0}\n"
print "Dummy array after adding 0 using append method  : #{dummy.append(0)}\n"
print "Dummy array after using uniq method             : #{dummy.uniq!}\n"
print "Popped item from Dummy array                    : #{dummy.pop}\n"
print "Dummy array after performing pop method on it   : #{dummy}\n"
puts "Iterating over dummy array using .each method"
dummy.each {|i| puts i}

puts
mt_array = []
puts "mt_array            : #{mt_array}"
puts "mt_array.empty?     : #{mt_array.empty?}"
puts "mt_array.include?(1): #{mt_array.include?(1)}"

puts
name = ["Aayush", "Deshmukh"]
print "Elements in name array                             : #{name}\n"
print "Output of join(\" \") operation on name array        : #{name.join(" ")}\n"
print "Output of join(\"-\") operation on name array        : #{name.join("-")}\n"
print "Output of split(\"-\") operation on \"Aayush-Deshmukh\": #{"Aayush-Deshmukh".split("-")}\n"
print "Output of split(\" \") operation on \"Aayush Deshmukh\": #{"Aayush Deshmukh".split(" ")}\n"

puts
puts "Use of .select operator on an array"
random_array = (1..20).to_a.shuffle
print "Array :\n#{random_array}\n"
print "Array after selecting only the odd integers using .select method:\n#{random_array.select{|number| number.odd?}}\n"