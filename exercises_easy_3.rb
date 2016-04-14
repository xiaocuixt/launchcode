# 数组的两种写法
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#向数组中添加元素
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones << "Dino"
flintstones.push "Dino"
flintstones.concat(%w(Dino Hoppy))  #合并两个数组

# 字符串中剪切xx后面的内容
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(0, advice.index('house'))

# 查找字符串中某个字符(串)的数量
statement = "The Flintstones Rock!"
statement.scan('t').count

#扩展字符串剧中
title = "Flintstone Family Members"
title.center(40)  => "       Flintstone Family Members        "
