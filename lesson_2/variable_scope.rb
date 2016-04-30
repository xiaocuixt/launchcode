# local variables 局部变量
# 在ruby的块中，单行偏向于使用{...},多行偏向于使用do...end

# 1. outer scope variables can be accessed by inner scope
# 外部scope中的变量可以被内部scope访问
a = 1         # outer scope variable

loop do       # the block creates an inner scope
  puts a      # => 1
  a = a + 1   # "a" is re-assigned to a new value
  break       # necessary to prevent infinite loop
end

puts a        # => 2  "a" was re-assigned in the inner scope
#例子说明了内部scope可以访问外部scope中的变量，另一方面，内部scope可以改变外部变量的值

#2. inner scope variables cannot be accessed in outer scope
# 内部变量不能被外部scope访问
loop do       # the block creates an inner scope
  b = 1
  break
end

puts b        # => NameError: undefined local variable or method `b' for main:Object

#3 peer scopes do not conflict
# 同等scope的同名变量不会冲突
2.times do
   a = 'hi'
   puts a      # 'hi' <= this will be printed out twice due to the loop
 end

 loop do
   puts a      # => NameError: undefined local variable or method `a' for main:Object
   break
 end

 puts a        # => NameError: undefined local variable or method `a' for main:Object

#4 嵌套block同样遵循内外scope访问变量的规则
#5 variable shadowing
n = 10

[1, 2, 3].each do |n|
  puts n
end
=> 1 2 3



# Variables and Methods  变量和方法

# methods can't access variables in another scope  方法不能访问其他scope中的变量
a = 'hi'

def some_method
  puts a
end

# invoke the method
some_method     # => NameError: undefined local variable or method `a' for main:Object


# methods can access objects passed in  方法可访问传入的对象
def some_method(a)
  puts a
end
some_method(5)  # => 5

# Blocks within Methods  方法中的块, 方法不能访问其中的块中的变量
def some_method
  a = 1
  5.times do
    puts a
    b = 2
  end

  puts a
  puts b
end
some_method     # => NameError: undefined local variable or method `b' for main:Object


#Constants 常量
# 在scope中常量constant和变量variable的规则是不一样的,在程序中常量是全局的
USERNAME = 'Batman'
def authenticate
  puts "Logging in #{USERNAME}"
end
authenticate    # => Logging in Batman
