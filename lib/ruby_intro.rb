# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  counter = 0
  sum_val = 0
  arr_length = arr.length()
  
  while counter < arr_length
    sum_val = sum_val + arr[counter]
    counter = counter + 1
  end
  
  return sum_val
end

def max_2_sum arr
  
  if arr.length() == 0
    sum_val = 0
    
  elsif arr.length() == 1
    sum_val = arr[0]
    
  else
  large_num1 = arr.max()
  index = arr.find_index(large_num1)
  arr.delete_at(index)
  large_num2 = arr.max()
  sum_val = large_num1 + large_num2
  end
  
    return sum_val
end

def sum_to_n? arr, n
  
  if arr.empty?
    return false 
  end
  
  if arr.combination(2).any? {|a, b| a + b == n } 
  return true 
  else
  return false
  end
  
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  str = s.downcase
  
  if str[0] =~ /[a-z]/ && str[0] =~ /[^aeiou]/ 
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  
   if(s.eql?("0"))
    return true
   end

  if s =~ /[^0-1]/
    return false
  elsif s =~ /^[10]*00$/
    return true
  end
end

# Part 3

class BookInStock
  
attr_accessor :isbn,  :price

	def initialize isbn, price
		raise ArgumentError if isbn.empty? || price <= 0
		@isbn = isbn
		@price = price
	end

	def price_as_string
		return "$%.2f" % price
	end
end
