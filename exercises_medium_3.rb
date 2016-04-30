# 在ruby中每一个命名实体都有一个object_id,是一个对象的独特标识
nil.object_id => 8  并且始终是8
42.object_id => 85   始终是85
"42".object_id, [42].object_id  一直是变化的
总结：nil和常量的object_id是固定不变的，其他对象如string array hash等的object_id是一直变化的



#方法优化实例：
def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

上面的方法可优化成：
def color_valid(color)
  color == "blue" || color == "green"
end