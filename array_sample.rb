#!/usr/bin/ruby

## Ruby Array models a mathematical "set" and set operations, 
## arr[start, len] => subarray starting at "start" and upto len elements
## arr[start,0] => insert elements
## negative indices count backward from end of array; Indexerror raised if
## negative index is past the beginning of the array


##===========Create an Array (and initialize)
a = Array.[](1,'a','A')
b = Array[1,'b','B']
[1,'c','C']

c = Array.new
d = Array.new(2)
e = Array.new(5,"A")

## array with 2 elements, each element is a hash data structure
f = Array.new(2,Hash.new)
f[0]['cat'] = '4-legged'
f[0]['bug'] ='bug eyed'
f[1]['bird']  = 'has wings'
f[1]['butterfly']  = 'bug with wings'

print "f[0]",f[0],"\n"
print "f[1]",f[1],"\n"

## 2 arrays where each array has 1 element; element is a hash data structure
m = Array.new(2) { Hash.new}
m[0]['fish'] = 'has gills'
m[0]['lizard'] = 'reptile'
m[1]['snake']  = 'has scales'
m[1]['frog']  = 'amphibian'

print "m[0]", m[0],"\n"
print "m[1]", m[1],"\n"


##BAD : new is missing so 1 element is created and initialized to 5, the
## code in { |i| i*i is ignored and is not an error !
squares = Array(5) { |i| i*i }

##GOOD : new is missing so 1 element is created and initialized to 5, the
## code in { |i| i*i is ignored and is not an error !

squares = Array.new(5) { |i| i*i }

print "squares len=", squares.length, "\n"

squares.each do |i|
  puts i
end


##======== & : set intersection between two arrays 
print "set intersection=",  [1,1,3,4,5] & [2,3,1] , "\n"

##======== * : Creates copies of an array
print "create copies ",  [1,1,3,4,5] *2 , "\n"


##======== + : concatenates two arrays
print " set union ",  [1,1,3,4,5] + ['a','ac'] , "\n"

##======== - : difference two arrays (BAD example, 2 instances of 1 removed
print " set difference ",  [1,1,3,4,5] - [1,4] , "\n"

##======== - : comparison - its possible to compare apples to oranges
print " set comparison ",  [1,1,3,4,5] <=> [1,4] , "\n"

##======== permutation on array elements
arr = ['a','b','c','d','e']

print ("1.====================Permutations on Array of Length =\n")
puts (arr.length)
res = arr.permutation

c=0
res.each do |i| 
  c = c+1
end

print ("Number of permutations on array =")
puts (c)

##================ Pass an array parameter

print ("2.==================== Passing an array to a function\n")
def calculate_value(x,y, *otherValues)
  # puts otherValues.length, otherValues
  print otherValues.length
  
  otherValues.each do |i|
    print i
  end 
  puts
end

calculate_value(1,2,'a','b','c')
arr = ['w','x','y','z']
calculate_value(1,2,*arr)

puts

#============== accessing array elements as subranges
arr=['h','e','l','l','o',' ','w','o','r','l','d']


print ("3.====================Array Subranges\n")
len = arr.length
print "All values in [0,", len, "]=", (arr[0,len]), "\n"
## prints values in array from 0 to 5
print "Values in [0,5] ", (arr[0,5]), "\n"
print "Values from [-5,5]", (arr[-5,5]), "\n"
print "Values from [0..6]", (arr[0..6]), "\n"
print "Values from [-10..6]", (arr[0..6]), "\n"
print "Values in [1..5]", (arr[1..5]), "\n"

