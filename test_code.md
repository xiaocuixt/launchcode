hi
Thanks for your patience, I refresh the answer below:

<h3>Local Variables</h3>

1.It outputs 2 because the variable str is reassigned within the loop.
 The underlying principle in these codes is that variables from an outer scope are available within a loop's inner scope

2.inner scope variables cannot be accessed in outer scope

3.I cannot say with certainty whether the below code snippet will run, There are two cases:
  a). It will run if variable str is initialized above, because outer scope variables can be accessed by inner scope.
  b) It will not run if variable str is not initialized above, because inner scope variables cannot be accessed in outer scope.

4.the a_method can not access the variable in another scope

5.The reason for the code below doesn't raise an exception is that a_method can access str inner it, 
The puts method can access the variable str outside the scope.
The underlying principle in this codes is that the puts method only can access the variable str 
outside a_method
The two str local variables are same, because inner scope can access to variable in outer scope, but 
do not share the same scope

6.a gets assigned to a new object in memory. This reassignment causes later changes to a to not 
affect b

7.There are 2 objects and 4 variables. Variables are not objects in Ruby, they are labels/references 
in your code for accessing objects. The two objects are strings "hello" and "world", and the four 
variables are a,b,c, and d

<h3>Mutating Method Arguments</h3>

1.param is scoped at the method level and greeting's value is unchanged,This demonstrates that the 
change method does not mutate the caller

2.The change method permanently changed the original greeting's value,This demonstrates that change 
method mutates the caller

3.The local variable param is reassigned to a new object in the change method. This is why the last 
line of change does not affect the greeting variable passed into that method

4.param is initialized to a new value before the line listed in this answer. It is this line of code 
param += "greeting". That makes it sogreeting is not mutated by the shovel operator <<


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

3.First, The map method returns a new array after the processing in the block.
Second, In the first line, The element in the array is just processing result. In the second line, 
The element in the array is  processing result and assignment it to argument. I would prefer the first line, It is simple and can return the same result.

4.Because the argument n just return 1 or 2 or 3, then 1>2, 2>2, 3>2 will return the booleans.

5.map uses the last line of the passed in block to determine what values get inserted into a new 
array. The last line of the block isputs which returns nil. This is why we get an array of nil values.

6.select puts values that evaluate to true. The last line of the associated block always evaluates to true. This causes the new array create by select to return the array [1,2,3], same as the original array.

7.puts returns nil. nil evaluates to false. select uses the last line of the associated block to 
determine what gets selected for a new array. Since the last line is always false in this case, 
select returns an empty array []