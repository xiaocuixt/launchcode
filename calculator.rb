# Kernel是系统预定义的一些方法，可以在所有对象上使用，Kernel模块中定义了private method和public method
# 第一版本
# Kernel.puts("Welcome to Calculator!")
# Kernel.puts("Input the first number")
# num1 = Kernel.gets

# Kernel.puts("Input the Second number")
# num2 = Kernel.gets

# Kernel.puts("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
# operator = Kernel.gets.chomp

# if operator == '1'
#   result = num1.to_i + num2.to_i
# elsif operator == '2'
#   result = num1.to_i - num2.to_i
# elsif operator == '3'
#   result = num1.to_i * num2.to_i
# else operator == '4'
#   result = num1.to_i / num2.to_i
# end

#Kernel.puts("The result is #{result}")

# 重构版本
def prompt message
  Kernel.puts "=>#{message}"
end

prompt("Welcome to Calculator!")
prompt("Input the first number")
num1 = Kernel.gets.chomp
prompt("Input the second number")
num2 = Kernel.gets.chomp
prompt("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets.chomp
result = case operator
         when '1'
          num1.to_i + num2.to_i
         when '2'
          num1.to_i - num2.to_i
         when '3'
          num1.to_i * num2.to_i
         when '4'
          num1.to_i / num2.to_i
end
prompt("The result is #{result}")