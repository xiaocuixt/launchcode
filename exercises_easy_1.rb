# 其中puts方法，会自动给参数加上to_s方法， p方法会自动给参数加上inspect方法
number = [1,2,2,3]
number.uniq  # => [1,2,3]
puts number  # => nil
p number     # => [1,2,2,3]

# 描述ruby中! 和 ?的区别
# ruby中如果!或?在方法名的后面，则属于方法名的一部分，在其他位置属于ruby的语法
!! 返回对象的true|false值，双重否定等于肯定
! 返回对象的对立面的true|false值

#替换字符串内容 gsub
# gsub方法，当第一个参数不匹配时，不执行任何操作, gsub!方法在第一个参数不匹配时会返回nil
message = "This is my friend Tom"
message.gsub!("Tom", "Lily")

#数组中的delete和delete_at方法
array = [1,2,3,4,5]
array.delete(2) => 2  #删除数组的等于2的元素,删除不存在的元素返回nil
array  => [1,3,4,5]
array.delete_at(2) => 4   #删除数组中索引为2的元素,删除不存在的元素返回nil
array = [1,3,5]

#判断一个数字是否存在于一个区间
(1..100).cover?(44)  => true
(1..100).cover?(144)  => false

#使用perpend将字符串连接到现有字符串的前面
a = '12 hours '
b = "and 5 mins ago"
b.prepend a  => "12 hours and 5 mins ago", 其中b的值改变
a + b        => "12 hours and 5 mins ago", a,b的值都不变
a << b       => "12 hours and 5 mins ago", 其中a的值改变
#以上三种方法，返回值相同，但是对值的处理不同

#ruby中的eval方法


#Array的flatten方法
names = ['Tom', 'jim']
names << ['Lily', 'Lucy'] =>['Tom', 'jim',['Lily', 'Lucy']]
#去处返回值的嵌套
names.flatten! => ['Tom', 'jim','Lily', 'Lucy']

#Hash的assoc方法,查找一个key/val并以数组的形式返回
user = {'Tom' => 25, 'Jim' => 23, 'Latty' => 32}
user.assoc('Tom') => ['Tom', 25]

#用数组的元素和元素对应的索引拼出hash
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end
