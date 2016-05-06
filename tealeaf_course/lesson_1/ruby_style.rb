#参考ruby风格指导：https://github.com/JuanitoFatas/ruby-style-guide/blob/master/README-zhCN.md

# 当定义一个方法，变量时使用snake_case蛇底式写法
fourty_two = 42
def some_method
end

#当定义一个常量变量时(onstant variable), 使用全大写(all uppercase letters.)
FOUR = "four"
FOUR = 4

#当写do...end块时，如果一行可以写完建议使用{}
["tom", "jim", "lily"].each do |name|
  puts name
end
#可以写成
["tom", "jim", "lily"].each {|name| puts name}


#当定义一个类时，使用CamelCase驼峰式
class RubyStyle
end

#空方法写法
def blank_method; end

# 一些方法的使用规则
使用Time.zone.now或者Time.now而不是Time.new获取当前时间

#ruby中缩排多行文本：
# 好
code = <<~END
  def test
    some_method
    other_method
  end
END

#截取替换字符串时注意:
# 差
url.gsub('http://', 'https://')
str.gsub('-', '_')

# 好
url.sub('http://', 'https://')
str.tr('-', '_')

# 在字符串插值中，不要显式调用 Object#to_s 方法，Ruby 会自动调用它。
# 差
message = "This is the #{result.to_s}."

# 好
message = "This is the #{result}."s

#循环hash的keys或者values时倾向使用each_key   each_value方法
# 好
hash.each_key { |k| p k }
hash.each_value { |v| p v }

#判断hash中是否含有某个key或者value时
使用 key?()和value?()方法

#当需要一次从hash中取出多个key的值时，使用values_at方法
email, username = data.values_at('email', 'nickname')

# 当你需要构造巨大的数据块时，避免使用 String#+，使用 String#<< 来替代。String#<< 通过修改原始对象进行拼接工作，
# 其比 String#+ 效率更高，因为后者需要产生一堆新的字符串对象。
paragraphs.each do |paragraph|
  html << "<p>#{paragraph}</p>"
end



