Kernel.puts("Welcome to Calculator!")
Kernel.puts("Input the first number")
num1 = Kernel.gets

Kernel.puts("Input the Second number")
num2 = Kernel.gets

Kernel.puts("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets.chomp

if operator == '1'
  result = num1.to_i + num2.to_i
elsif operator == '2'
  result = num1.to_i - num2.to_i
elsif operator == '3'
  result = num1.to_i * num2.to_i
else operator == '4'
  result = num1.to_i / num2.to_i
end

Kernel.puts("The result is #{result}")

