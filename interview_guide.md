1. Areas of Foucus面试关注的地方
  general programming fluency with basic Ruby   #使用基本ruby流利的进行一般编程
  ability to speak clearly and with precision   #清晰准确的描述能力

2. Live Coding  现场编程
  working with simple data structures like arrays and hashes  熟悉数据结构  array和hash
  熟练地操作array和hash

Communication Style 交流方式

Finally, we're also assessing[测试，评估] your ability to communicate clearly. 
You should speak in a clear tone[语气，音调] and you should explain concepts with precision[精确地] using the correct vocabulary[词汇，列表]. 
If you haven't done this before, it's likely you'll need to practice before the interview. 
There's a reason the previous sentence is in bold.When you make a mistake, we're also looking for how you recover -- or whether you are able to recover at all.

1. reverse an array, without using String#reverse

old_array = ['b', 'da', 'f', '4', 'gh']
new_array = []
old_array.each_with_index do |x, index|
  new_array[index] = old_array[old_array.size - index - 1]
end
new_array


# 也可使用array的pop方法，每次循环pop出最后一个元素

2.fizz buzz

def fizeebuzz(arg1, arg2)
  array = []
  (arg1..arg2).each do |arg|
    if arg % 3 == 0 && arg % 5 != 0
      array << "Fizz"
    elsif arg % 3 != 0 && arg % 5 == 0
      array << "Buzz"
    elsif arg % 3 == 0 && arg % 5 == 0
      array << "FizzBuzz"
    else
      array << arg
    end
  end
  array.join(",")
end

puts fizeebuzz(1,15)

3.数组可以使用select方法筛选符合条件的记录

PRODUCTS = [{:name => "apple", :price => 300}, 
   {:name => "dell", :price => 500}, 
   {:name => "lenove", :price => 400},
   {:name => "lenove", :price => 400}
  ]

类似:
def search(query)
  PRODUCTS.select do |p|
    (p[:min_price] .. p[:max_price]).cover(query[:price]) && query[:name].downcase == "lenove"
  end
end

a more complicated array/hash filtering exercise


# 查找返回两个数字之间的质数

prime number 质数，又叫素数，是只能被1或者自身整除的数。
def is_prime? number
  (2..number-1).each do |diviser|
    return false if number % diviser == 0
  end
  true
end

def find_prime(start, stop)
  (start..stop).select do |number|
    is_prime? number
  end
end

# determine whether a string contains a balanced set of parentheses
# 判断一个string是否包含一组对称的圆括号
# balancer平衡器
def balancer(string)
  return false unless string.count("(") == string.count(")")
  paren_count = 0
  string.split("").each do |char|
    paren_count += 1 if char == "("
    paren_count -= 1 if char == ")"
    retrun false if paren_count < 0
  end
  true
end

p balancer("hi")
p balancer("(hi")
p balancer("(hi)")
p balancer("((hi))")
p balancer("(((hi))")







