# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  x = arr.sort.reverse.first(2)
  x.inject(0, :+)
end

def sum_to_n? arr, n
  x = []
  if arr.empty? or arr.length == 1
    return false
  end
  arr.each_with_index do |number1, i|
    arr.each_with_index do |number2, j|
      unless i == j
	if number1 + number2 == n
	  return true
        end
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  x = s.scan(/\A(?=[^aeiou])(?=[a-z])/i)
  x.length >= 1? true : false  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  x = Integer(s) rescue false
  if x == false
    return x
  elsif x % 4 == 0
    return true
  else
    return false
  end

end

# Part 3

class BookInStock
  def initialize (isbn, price)
    raise ArgumentError.new('Argument is not valid') if price <= 0 
      @price = price
    raise ArgumentError.new("Argument not valid") if isbn =="" 
      @isbn = isbn
  end
  
  attr_accessor :price
  attr_accessor :isbn
  # def price
  #   @price
  # end
  # def price=(value)
  #   @price = value
  # end

  # def isbn
  #   @isbn
  # end
  # def isbn=(value)
  #     @isbn = value
  # end

  def price_as_string
   "$#{'%.02f' %@price}"
  end

  attr_accessor :isbn
  attr_accessor :price
end
