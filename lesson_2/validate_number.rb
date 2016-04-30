# 验证数字的几种方法

# 1. 验证整数
def integer?(input)
  input.to_i.to_s = input
end

def integer?(input)
  /^\d+$/.match(input)
end

def integer?(input)
  Interger(input) rescue false
end

# 2. 验证数字，包含整数和小数
def number?(input)
  interger?(input) || float?(input)
end

# 定义float?的三种方法
def float?(input)
  input.to_i.to_s = input
end

def float?(input)
   /\d/.match(input) && /^\d*\.?\d*$/.match(input)
end

def float?(input)
  Float(input) rescue false
end