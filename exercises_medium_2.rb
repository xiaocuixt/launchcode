# 复杂一点的hash
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}

# 计算出所有gender为male的年龄之和
# 自己解答：
ages = []
munsters.keys.each do |k|
  ages <<  munsters[k]["age"] if munsters[k]["gender"] == "male"
end
ages.inject(0){|sum, element| sum+ element}
# 官方解答
total_male_age = 0
munsters.each do |name, details|
  total_male_age += details["age"] if details["gender"] == "male"
end

#返回类似这样的格式(Name) is a (age) year old (male or female).
munsters.each do |name, info|
  p "#{name} is a #{info["age"]} year old #{info["gender"]}"
end

# 让String有像array中的map，select等方法，使用先split后join的方式
sentence = "Humpty Dumpty sat on a wall."
#将sentence倒叙排列
def reverse_sentence sentence
  arr = []
  sen = sentence.split("")
  sen.length.times { arr << sen.pop }
  arr.join("")
end
