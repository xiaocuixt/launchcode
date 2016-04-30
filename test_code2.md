<h3>Mutating Method Arguments</h3>

1.The variable greeting isn't changed, because when the change method is invoked, the origin object is not muated. This is <em>"pass by value"</em>.

<h3>Working with Collections</h3>

1.This is my definition of the Array#map method.

```
class Array
  def map
    array = []
    self.each do |a|
      array << yield(a)
    end
    array
  end
end
```

Then you an use the map method like this:
```
[1,2,3].map{|x| x+2}
```
This will return a new array [3,4,5]
The map method iterate the array first, The return value of the expression in the block is selected into the new array. So it returns an array [3,4,5]


2.This is my definition of the Array#select method.

```
class Array
  def select
    array = []
    self.each do |a|
       array << a if yield(a)
    end
    array
  end
end
```
Then you an use the map method like this:

[1,2,3].select{|x| x==2}, This will return a new array [2]

The select method iterate the array first, The element included in the array which evaluates the expression to true is selected into the new array. So it returns [2]. Also if you run code like [1,2,3].select{|x| x==5}, is will return [], for 5 doesn't match any elements in the array.

<h3>Working with Collections</h3>

5.The array will be [nil, nil, nil], In the block, the map method only insert the return of the last line into a new array. The last line in the block always returns nil. So the new array is an array of nil values.


6.The array will be [1,2,3], Because select returns valuses that evaluate the expression to true.
The last line in the blcok always evaluates to true, so the new array is same as the original array.

7.The select method in this snippet returns an empty array [], puts method in the block returns nil, nil evaluates to false. The return value of last line is selected for into new array. The last line always returns false, Thus, this select method returns an empty array[].