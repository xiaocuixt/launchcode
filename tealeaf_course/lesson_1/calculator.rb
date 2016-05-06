require "pry"

def say(msg)
  puts "#{msg}"
end

say "What is the first number"
num1 = gets.chomp

say "What is the second number"  #第二种写法  puts "the number is " + num1.to_s
num2 = gets.chomp

say "1) add 2) substract 3) multiply 4) divided"

operator = gets.chomp

result = case operator
          when "1"
            num1.to_f + num2.to_f
          when "2"
            num1.to_f - num2.to_f
          when "3"
            num1.to_f * num2.to_f
          when "4"
            num1.to_f / num2.to_f
          end

say "The result is #{result}"