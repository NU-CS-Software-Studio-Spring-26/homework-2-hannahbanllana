# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    # YOUR CODE HERE
    sum = 0
    arr.each do |num|
        sum += num
    end
    sum
end

def max_2_sum arr
    # YOUR CODE HERE
    sum = 0
    top = arr.max(2)
    top.each do |num|
        sum += num
    end
    sum
end

def sum_to_n? arr, n
    # YOUR CODE HERE
    arr.each_with_index do |num, i|
        diff = n - num
        if arr.include?(diff) && arr.index(diff) != i
            return true
        end
    end
    false
end

# Part 2

def hello(name)
    # YOUR CODE HERE
    s = "Hello, "
    s.concat(name)
    s
end

def starts_with_consonant? s
    # YOUR CODE HERE
    return false if s.empty?
    s[0].downcase =~ /[a-z]/ && s[0].downcase !~ /[aeiou]/
end

def binary_multiple_of_4? s
    # YOUR CODE HERE
    return false if s !~ /^[01]+$/
  s.to_i(2) % 4 == 0 
end

# Part 3

class BookInStock
# YOUR CODE HERE
    attr_accessor :isbn, :price

    def initialize(isbn, price)
        raise ArgumentError, "input ISBN" if isbn.empty?
        raise ArgumentError, "price > 0" if price <= 0
        @isbn = isbn
        @price = price
    end
    
    def price_as_string
        price_str = @price.to_s
  
        dot_index = price_str.index(".")
  
        if dot_index == nil
            price_str = price_str + ".00"
        elsif price_str.length - dot_index == 2
            price_str = price_str + "0"
        end
  
        "$" + price_str
    end
end
