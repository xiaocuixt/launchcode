source:  https://launchschool.com/lessons/a0f3cd44/assignments/3718

# 编写代码的宗旨：让你的代码最重要的是可读性，不只是方便别人，也方便未来的自己
Making your code readable is of paramount importance, not only for others, but for future self.

#1. better  注意每段有独立意义的语句尽量和别的行间隔一行

name = ''

puts "Enter your name: "
loop do
  name = gets.chomp
  break unless name.empty?
  puts "That's an invalid name. Try again:"
end

puts "Welcome #{name}!"
puts "What would you like to do?"

# Should a method return or display?  一个方法是return还是display一些东西
# 有些方法是有副作用的 side effects

# side effect: displays something to the output
# returns: nil
def total(num1, num2)
  puts num1 + num2
end

# side effect: mutates the passed-in array
# returns: updated array
def append(target_array, value_to_append)
  target_array << value_to_append
end

# side effect: none  无副作用
# returns: new integer

def total(num1, num2)
  num1 + num2
end

# if a method has both side effects and a meaningful return value, it's a red flag. Try to avoid writing methods that do this, as it will be very difficult to use these methods in the future.

#4. Name methods appropriately  适当地定义方法名
定义方法名时，要符合适用的场景语境
If you find yourself constantly looking at a method's implementation every time you use it, it's a sign that the method needs to be improved.
当你发现你自己在每次查找之前定义的一个方法时都要花费不少时间，是需要考虑优化下这个方法名了。

#5. Don not mutate the caller during iteration 不要在迭代中改变对象的值
Don not mutate a collection while iterating through it.
不要在迭代时改变一个collection


#6. Variable shadowing  隐藏变量
当你在一个inner scope中选择一个与outer scope中同名的局部变量,Variable shadowing(隐藏变量)就会发生。这非常容易产生错误,
并且本质上阻止你从inner scope访问outer scope中的变量


#7. Do not use assignment in a conditional 禁止在条件语句中使用赋值，即：if one = "hehe" 这样的语句

#8. Use underscore for unused parameters  未使用的parameters使用下划线
#例子，当你循环一个数组却只需要index时,name数组中的元素是不需要的，那么元素参数可以用underscore下划线代替
names.each_with_index do|_, idx|
  puts "#{idx+1}. got a name!"
end
#9. Gain experience through struggling  通过奋斗来获取经验
# keywords  best  right  best practise


