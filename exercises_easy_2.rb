# 这个测试讲述hash的几个方法:
# key?方法，判断hash中是否含有某个key
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.key("Kimme")    => false
ages.key?("Herman")  => true
类似方法:
ages.include?("Herman") => true
ages.member?("Herman") => true

# 合集数组中所有value的和
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages.values  => [32, 30, 5843, 10, 22, 237]
ages.values.inject(:+)   #求数组的和

# 保存返回符合规则的数据
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.keep_if {|name, age| age < 100 }

# 字符的格式化
munsters_description = "The Munsters are creepy in a good way."

munsters_description.capitalize! => "The munsters are creepy in a good way."  #把...大写
munsters_description.swapcase!  => "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."  #大小写对应切换
munsters_description.downcase!  => "the munsters are creepy in a good way."
munsters_description.upcase!    => "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

# merge方法合并两个hash
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)

# 找出一个hash中值最小/大的数字
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages.values.min => 10
ages.values.max => 5843

# 判断一个字符串是否是另一个字符串的一部分
advice = "Few things in life are as important as house training your pet dinosaur."
advice.match("Dino")  => nil
advice.include?("Dino")  => false

# 找到数组中匹配某个规则的值的索引
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.index { |name| name[0, 2] == "Be" } => 3   #以Be开头的值的索引

# 数组中每一个字符串都只保留前三位
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map {|name| name[0..2]}
