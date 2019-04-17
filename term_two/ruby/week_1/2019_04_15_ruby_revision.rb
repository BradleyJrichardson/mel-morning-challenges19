# 1. 
# Write a ruby method that takes one paramter, rows, and draws a triangle over that many rows.
# The following would be triangle over four rows
# *
# **
# ***
# ****

# Write code to prompt the user to enter how many rows
# Add a method to draw a square and a rectangle
# Prompt the user to choose which shape and enter values required




def shape_drawer
  choice_prompter
end 

def choice_prompter
  puts "1 = draw a triangle | 2 = draw a square | 3 = draw a rectangle"
  choice = gets.chomp.to_i
  case choice
    when 1 then draw_triangle
    when 2 then draw_square
    when 3 then draw_rectangle
  end 
end 

def draw_triangle
  puts "how many rows"
  rows = gets.chomp.to_i
  x = 1
  rows.times do
    puts "#" * x
    x += 1
  end 
end

def draw_square
  puts "how many rows"
  rows = gets.chomp.to_i
  rows.times do
    puts "#" * rows
  end 
end

def draw_rectangle
  puts "how many rows"
  rows = gets.chomp.to_i
  rows.times do
    puts "#" * (rows * 5)
  end 
end 

shape_drawer



# 2.
# Write a method that simulates rolling two 6 sided dice and calculating the sum of the numbers
# You program should roll the dice 36,000 times
# Use an array to tally the number of times each possible sum appears
# Display the results