# 1. 
# Write a ruby method that returns the smallest of three floating point numbers

def smallest_one(num1,num2,num3)
  if num1 < num2 && num1 < num3
    num1
  elsif num2 < num1 && num2 < num3
    num2
  else num3 < num1 && num3 < num1
    num3
  end
end

puts smallest_one(2.9, 3.4, 1.9)

# 2.
# Write a ruby method that takes an integer and returns the number with it digits 
# reversed. For example, given the number 7631, the function should return 1367

def number_reverser(integer)
  string = integer.to_s.reverse!
  string.to_i
end

puts number_reverser(5729)


# 3.
# The greatest common divisor (GCD) of two integers is the largest integer
# that evenly divides each of the numbers. Write a method gcd that 
# returns the greatest common divisor of two integers.

def gcd(a, b)
  if a % b == 0
    b
  else
    gcd(b, a % b)
  end
end 