db = {"mashrur" => "password1",
    "jack" => "password2",
    "arya" => "password3",
    "jonshow" => "password4",
    "heisenberg" => "password5"}


puts "Welcome to the authenticator"
25.times {print "-"}
puts
puts "This program will take input from user and compare password"
puts "If password is correct, you will get back the user object"

num = 0
input = "h"
while num<3 and input.downcase != "n"
    print "Username: "
    username = gets.chomp

    print "Password: "
    password = gets.chomp

    if db.keys.include?(username) and db[username] == password
        puts "{:username=>\"#{username}\", :password=>\"#{password}\"}"
    else
        puts "Credentials were not correct"
    end
    puts "Press n to quit else press any other key to continue:"
    input = gets.chomp
    num += 1
end

if num == 3
    puts "You have exceeded the number of attempts."
end