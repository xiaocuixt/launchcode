Array的map和select方法

arr = [1,2,3,4,5,6,7,8,9,10]
循环输出
arr.each{|x| puts x}
循环改变
arr.map{|x| x*4}
选择输出
arr.select{|x| x>5}  返回大于5的数
arr.select{|x| true}  返回全部
arr.select{|x| false}  返回空的

判断数字奇偶的函数
1.odd?   => true
1.even?   => false


查看对象的方法:
3.methods

数组操作：

a = [1,2,3,4,5]
a << 6  => [1,2,3,4,5,6]        #末尾加一个元素
a.unshift 0  => [0,1,2,3,4,5]   #数组从前面加一个元素
a.pop  => 5                     #删除最后一个元素
a.uniq   => 去重


Hash
 h = {a: 1, b:2, c: 3}  => {:a => 1, :b =>2, :c => 3}
 h[:a] => 1
 h[:e] = 5   #添加一个键值对
 删除value值小于3.5的
 h.each{|k,v| h.delete(k) if v < 3.5}
