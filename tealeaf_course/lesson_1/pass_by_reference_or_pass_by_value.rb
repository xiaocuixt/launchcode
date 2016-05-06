# pass_by_value，不改变the caller值的是pass_by_value

def change_name(name)
  name = 'bob'      # does this reassignment change the object outside the method?
end

name = 'jim'
change_name(name)
puts name           # => jim

#总结： when an operation within the method mutates the caller, it will affect the original object

# pass_by_reference，改变the caller值的是pass_by_reference,基本所有带!的方法都是pass_by_preference
def cap(str)
  str.capitalize!   # does this affect the object outside the method?
end

name = "jim"
cap(name)
puts name           # => Jim


#Variables as Pointers  变量作为指针

TODO  这个要抽出时间翻译一下
# https://launchschool.com/books/ruby/read/more_stuff#variables_as_pointers