# ASCII Art  表示字符艺术
10.times { |number| puts number}   => 0 到 9 一共10个数字

#统计一个字符串中某个字母出现的次数，并且拼出hash
statement = "The Flintstones Rock"
result = {}
letters = ("A".."Z").to_a + ("a".."z").to_a
letters.each do |letter|
  num = statement.scan(letter).length    #scan方法扫描参数
  result[letter] = num if num > 0
end
=> { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

#串接方法
puts "the value of 40 + 2 is " + (40 + 2)        => 报错， 因为数字和字符串没法连接
puts "the value of 40 + 2 is " + (40 + 2).to_s   => "the value of 40 + 2 is 42"
puts "the value of 40 + 2 is #{40 + 2}"          => "the value of 40 + 2 is 42"