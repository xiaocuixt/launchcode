# variable scope  变量作用域
# 最常见的局部变量作用域的场景是在block和method中

# Variables and Blocks  变量和块

1.Variables initialized in an outer scope can be accessed in an inner scope, but not vice versa.
  在一个outer scope中被初始化的变量，可以被一个inner scpoe访问，但是并不是反之亦然。
  a = 1         # outer scope variable

  loop do       # the block creates an inner scope
    puts a      # => 1
    a = a + 1   # "a" is re-assigned to a new value
    break       # necessary to prevent infinite loop
  end

  puts a => 2

#  inner scope can access outer scope variables,并且outer scope variable可以被改变

2. inner scope variables cannot be accessed in outer scope
Remember that where a variable is initialized determines its scope.
记住一个变量的初始化决定了它的scope

loop do       # the block creates an inner scope
  b = 1
  break
end

puts b        # => NameError: undefined local variable or method `b' for main:Object
因为变量b是定义在inner scope中的，所以外部访问不到

3. peer scopes do not conflict  同级的scope中的同名变量是互相不影响的
4. nested scopes  嵌套的scope
nested scopes中同样是外部的scope访问不到内部scope中定义的变量

5.variable shadowing  隐藏变量

n = 10

[1, 2, 3].each do |n|
  puts n
end

这里block中的n和外部的n命名相同时是variable shadowing的情况，会组织访问外部的scope中的变量
这里会puts参数n的值，而不是outer scope中n的值，日常开发中药通过命名注意避免这种variable shadowing


# Variables and Methods  变量和方法

1. # methods can't access variables in another scope
method不能访问其它scope中的变量，也就是方法中的变量只能内部调用
method并没有outer scope或者 inner scope的概念，它只能访问定义在method内部的或者外部传过来的变量。

a = 'hi'

def some_method
  puts a
end

# invoke the method
some_method     # => NameError: undefined local variable or method `a' for main:Object


2. methods can access objects passed in
method可以访问通过参数形式传入的对象
def some_method(a)
  puts a
end

some_method(5)  # => 5

# Blocks within Methods  方法中的块

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

很明显，变量b是属于times的block中，所以puts b的scope是访问不到的

#  Constants  常量
In procedural style programming, constants behave like globals.
在程序上讲，常量是全局的

USERNAME = 'Batman'   #全部大写定义常量名

loop do
  MY_TEAM = "Phoenix Suns"
  break
end

puts MY_TEAM    # => Phoenix Suns





