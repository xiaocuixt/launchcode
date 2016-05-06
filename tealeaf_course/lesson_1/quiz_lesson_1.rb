#  quiz  考察，课堂测验
# executed  已执行的，已生效的
# indices是index的复数，目录
# transformation 转化，转变
# FYI  For Your Information  仅供参考
# procedural  程序上的
# reflect on 仔细考虑，反省
# sink in  渗入，完全被理解


1. The value of a is still 1

2. What is the difference between an Array and a Hash?

An Array is an ordered list of objects organized by indices 
while a Hash is a collection of objects organized with key-valued pairs. 
Order matters in arrays and they can only use integers as indices. In hashes,
you can define any type of object as its keys and values.



3. arr = [1, 2, 3, 3]
arr.uniq => [1,2,3]    arr => [1,2,3,3]    pass_by_value
arr.uniq! => [1,2,3]   arr => [1,2,3]      pass_by_reference

4.
[1,2,4].map{|x| x*2}      => [2,4,8]
[1,2,4].select{|x| x==4}  => [4]

5. 
hash = {name: "xiaocui", age: 25}
hash
   => {:name => "xiaocui", :age => 25}

如果在rails中使用:stringify_keys方法：
hash.stringify_keys => {"name" => "xiaocui", "age" => 25}

6. x = 1

x.odd? ? "no way!" : "yes, sir!"
=> "no way!"
判断1是否为奇数，若是返回"no way!"，否则返回"yes, sir!"

7.
x = 1
3.times do
  x += 1
end
puts x

x is 4

8. something wrong
The outter scope can't access to the inner scope variable




