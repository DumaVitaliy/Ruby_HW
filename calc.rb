require 'colorize'



def calculator_operation

puts 'What would you like to do?'

puts '[1] Addition'

puts '[2] Substraction'

puts '[3] Multiply'

puts '[4] Division'



gets.to_i

end



def init_choise

puts 'What would you like to do?'

puts '[1] Calculator'

puts '[2] Calculate BMI'

puts '[0] EXIT'



gets.to_i

end



loop do

input = init_choise



break if input == 0



case input

when 1

operation = calculator_operation

case operation

when 1..4

puts 'Enter first operand'

first_operand = gets.to_i



puts 'Enter second operand'

second_operand = gets.to_f



if operation == 4 && second_operand == 0

puts 'Can not divide by zero!!!'.red.on_black

else

result = if operation == 1

(first_operand + second_operand)

elsif operation == 2

(first_operand - second_operand)

elsif operation == 3

(first_operand * second_operand)

elsif operation == 4

(first_operand / second_operand)

end



operation_name = if operation == 1

'Addition'

elsif operation == 2

'Substarction'

elsif operation == 3

'Multiplying'

elsif operation == 4

'Division'

end

puts '----------------------------'.green.on_white

puts " #{ operation_name } result: #{ result } ".green.on_white

puts '----------------------------'.black.on_white

end

else

puts 'invalid operation'.red.on_white

end

when 2

puts 'enter your weight (kg)'

weight = gets.to_i.abs



puts 'enter your height (cm)'

height = gets.to_i.abs * 0.01



bmi = (weight / (height**2)).round(2)

case bmi

when 0..18.5

puts " Your BMI is #{ bmi }, Underweight ".black.on_white

when 18.5..24.9

puts " Your BMI is #{ bmi }, Normal weight ".black.on_white

when 24.9..29.9

puts " Your BMI is #{ bmi }, Overweight ".red.on_white

else

puts "Your BMI is #{ bmi }, Obesity ".red.on_black
end
  else
    puts " your chois"
end
  end