# Pass by Reference vs Pass by Value  传入的是"引用"  还是"值"
# Rubyists并不同意ruby简单的说成是 "pass by reference" or "pass by value".这要看传入的对象是否发生变化
# 方法中传入的参数你可以认为是original object的reference,也可以认为是original object的copy版

# pass by value 当传入的参数是origin object的copy时，执行方法不会改变origin object的值
# pass by perfence 当传入的参数是origin object的reference时，执行方法会改变origin object的值
# local variable局部变量

# 三个例子：
# 例子1
def change_name(name)
  name = 'bob'      # does this reassignment change the object outside the method?
end

name = 'jim'
change_name(name)
puts name           # => jim
# 执行完上面的例子后 name的值并没有改变, pass by value

# 例子2
def cap(str)
  str.capitalize!   # does this affect the object outside the method?
end

name = "jim"
cap(name)
puts name           # => Jim
# 执行完上面的例子后 name的值改变了, pass by reference,一般带有!的方法，是pass by perference

# 例子3
def cap(str)
  str.capitalize
end

name = "jim"
cap(name)
puts name           # => jim

# 在Ruby中，既不单纯的是pass_by_reference也不单纯的是pass_by_value，而是两者的结合体，有一个规则是：
 when an operation within the method mutates the caller, it will affect the original object
 当方法中的一个操作改变了调用对象的值，那么它将影响/改变原有的对象