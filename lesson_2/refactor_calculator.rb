# 重构版本

def validate_number? num
  num.to_i != 0
end

#注意要将case表达式返回值存到一个变量中，然后返回这个变量
def operation_to_message operation
  op = case operation
      when '1'
        'Adding'
      when '2'
        'subtracting'
      when '3'
        'Multiplying'
      when '4'
        'dividing'
      end
  op
end

def prompt message
  Kernel.puts "=>#{message}"
end

prompt("Welcome to the calculator. Enter your name:")
name = ''
loop do
  name = Kernel.gets.chomp
  if name.empty?
    prompt("Make sure to use a validate name!")
  else
    break
  end
end

prompt ("Hi #{name}")
#main loop
loop do
  number1 = ''
  #多次输入的值形成一个循环，比如多次输入0时，会显示错误提示信息，当输入不为0时，break跳出循环，向下执行
  loop do
    prompt("what is the first number")
    number1 = Kernel.gets.chomp
    if validate_number? number1
      break
    else
      prompt("Hmm...This does not look like a validate number")
    end
  end

  number2 = ''
  loop do
    prompt("what is the second number")
    number2 = Kernel.gets.chomp
    if validate_number? number2
      break
    else
      prompt("Hmm...This does not look like a validate number")
    end
  end

  prompt("Welcome to Calculator!")

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets.chomp
    if %w(1 2 3 4).include? operator
      break
    else
      prompt("Must choose 1 2 3 or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers....")

  result = case operator
           when '1'
            number1.to_i + number2.to_i
           when '2'
            number1.to_i - number2.to_i
           when '3'
            number1.to_i * number2.to_i
           when '4'
            number1.to_i / number2.to_i
  end
  prompt("The result is #{result}")
  prompt("Do you want to perform another calculation?(Y to calculate again)")
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?("y")
end
prompt("Thank you for using the calculator. good bye!")