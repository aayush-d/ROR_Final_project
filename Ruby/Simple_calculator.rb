def menu
    puts "Press 1 for addition operation"
    puts "Press 2 for subtraction operation"
    puts "Press 3 for multiplication operation"
    puts "Press 4 for division operation"
    puts "Press 5 for modulus operation"
    puts "Press 6 to exit"
    puts "Enter your choice:"
    choice = gets.chomp
    while not [1, 2, 3, 4, 5, 6].include?(choice.to_i)
        puts "Kindly enter a valid option!"
        choice = gets.chomp
    end
    return choice.to_i
end

def calculate(option)
    operator = ""
    answer = 0
    number1 = 0
    number2 = 0
    if [1, 2, 3].include?(option)
        puts "Enter the first number:"
        number1 = (gets.chomp).to_f
    
        puts "Enter the secod number:"
        number2 = (gets.chomp).to_f

        case option
            when 1
                operator = "+"
                answer = number1 + number2
            when 2
                operator = "-"
                answer = number1 - number2
            when 3
                operator = "*"
                answer = number1 * number2
            end
    else
        if option == 4
            operator = "/"
        else
            operator = "%"
        end
        puts "Enter the dividend:"
        number1 = (gets.chomp).to_f
    
        puts "Enter the divisor :"
        number2 = (gets.chomp).to_f

        if number2==0
            answer = "Sorry! division by zero is not possible"
        elsif option == 4
            answer = number1 / number2
        else
            answer = number1 % number2
        end
    end
    return [number1, number2, operator, answer]
end

def main()
    option = menu
    while option!=6
        ret_val = calculate(option)
        n1 = ret_val[0]
        n2 = ret_val[1]
        op = ret_val[2]
        ans = ret_val[3] 
        puts "#{n1} #{op} #{n2} = #{ans}"
        puts
        option = menu
    end
    puts
    puts "Thank you!"
end
main