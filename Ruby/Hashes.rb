my_hash = {"name" => "Aayush", a: 1, :b => 2, "c":3}    #key "name" is string rest all the keys are symbols
puts "\"name\"=>#{my_hash["name"]}"
puts ":a=>#{my_hash[:a]}"
puts ":b=>#{my_hash[:b]}"
puts ":c=>#{my_hash[:c]}"

puts "Keys in my_hash  : #{my_hash.keys}"
puts "Values in my_hash: #{my_hash.values}"

my_hash[:d] = 4

puts "New key pair added to my_hash is :d=>#{my_hash[:d]}"