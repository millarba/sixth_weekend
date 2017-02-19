# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.

# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.

def is_prime?(number)
  if number < 1
    return false
  elsif number <= 3
    return true
  elsif number % 2 == 0 || number % 3 == 0 
    return false
  elsif number != 5 && number % 5 == 0
    return false
  elsif number != 7 && number % 7 == 0
    return false
  elsif number != 9 && number % 9 == 0
    return false
  elsif number != 11 && number % 11 == 0
    return false
  else 
    return true
  end
end

# Second, implement the highest_prime_number_under method below. It should accept a number as
# an argument and return the highest prime number under that number. For example, the 
# highest prime number under 10 is 7.

def highest_prime_number_under(number)
  until is_prime?(number)
    number -= 1
  end
  number
end

p highest_prime_number_under(25)

p is_prime?(25)

p is_prime?(29)