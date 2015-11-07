# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return 0 if arr.empty?
  arr.inject(:+)
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  arr.max(2).inject(:+)
end
def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.empty?
  return false if arr.length == 1
  arr[0..arr.length-2].each_index { |i| return true if arr[i+1..arr.length-1].bsearch { |j| j == n - arr[i]  } != nil }
  false
end
# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return true if s =~ /^[BCDFGHJKLMNPQRSTVXZ].*/i
  false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if s =~ /^[10]*1000*$|^0+$/
  false
end

# Part 3

class BookInStock
# YOUR CODE HERE
def initialize(isbn="", price=0)
  @isbn = isbn
  @price = price
  raise(ArgumentError)  if (@isbn.empty?) || (@price <= 0)
end
attr_accessor(:isbn, :price)
def price_as_string
  "$"+sprintf('%.2f', @price)
end
end
