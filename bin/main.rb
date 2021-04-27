#!/usr/bin/env ruby

def check_input(cell)
  until (1..9).member?(cell)
    puts "Please enter a number between 1 and 9"
    cell = gets.chomp.to_i
  end
end

def show_board
  system "clear" or system "cls"
  
  block = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  puts "x---x---x---x"
  puts "| #{block[0][0]} | #{block[0][1]} | #{block[0][2]} |"
  puts "x---x---x---x"
  puts "| #{block[1][0]} | #{block[1][1]} | #{block[1][2]} |"
  puts "x---x---x---x"
  puts "| #{block[2][0]} | #{block[2][1]} | #{block[2][2]} |"
  puts "x---x---x---x"
  puts "\n"
end

puts "Welcome to Tic-Tac-Toe!"
puts "\n"
puts "What's the name of the first player?"

player1 = gets.chomp

puts "\n"
puts "What's the name of the second player?"

player2 = gets.chomp

puts "\n"

show_board

puts "\n"
puts "#{player1} will play X and #{player2} will play O"
puts "\n"

counter = 9
while counter > 0
  puts "remaining moves #{counter}."
  puts "\n"
  puts "Please #{player1} select an available cell from the board:"
  cell1 = gets.chomp.to_i
  check_input(cell1)
  counter -= 1
  if counter == 0
    puts "\n"
    puts "is a tie!"
    exit
  end

  puts "remaining moves #{counter}."
  puts "\n"
  puts "Please #{player2} select an available cell from the board:"
  cell2 = gets.chomp.to_i
  check_input(cell2)
  show_board
  counter -= 1
  
end

