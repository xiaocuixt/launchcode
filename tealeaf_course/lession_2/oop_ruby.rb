#ref: https://launchschool.com/books/oo_ruby/read/introduction
initialize 方法是ruby一个标准的class method, 起到类似其他面向对象语言中构造函数的作用

class Box
   def initialize(w,h)
      @width, @height = w, h
   end
end

# instance variables(实例变量)就是class attributes(类属性)
# ruby中的accessor和setter方法, accessor访问器即 getter
# attr_reader表示可读, attr_writer表示可写， attr_accessor表示可读写

class Box
   def initialize(w,h)
      @width, @height = w, h
   end
  
  #accessor  访问器
  def width
    @width
  end

  def height
    @height
  end

  #setter  修改器
  def width=(value)
    @width = value
  end
  def height=(value)
    @height = value
  end

end

box = Box.new(10, 20)
puts box.width
puts box.height

box.width = 30
box.height = 50
puts box.width
puts box.height
