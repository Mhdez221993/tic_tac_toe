#!/usr/bin/env ruby

def check_input(cell)
  until (1..9).member?(cell)
    puts "Please enter a number between 1 and 9"
    cell = gets.chomp.to_i
  end
end

$block = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
$maped = {
  1 => [0,0],
  2 => [0,1],
  3 => [0,2],
  4 => [1,0],
  5 => [1,1],
  6 => [1,2],
  7 => [2,0],
  8 => [2,1],
  9 => [2,2]
}

def show_board
  system "clear" or system "cls"
end

while true
  p $block
  puts "x---x---x---x"
  puts "| #{$block[0][0]} | #{$block[0][1]} | #{$block[0][2]} |"
  puts "x---x---x---x"
  puts "| #{$block[1][0]} | #{$block[1][1]} | #{$block[1][2]} |"
  puts "x---x---x---x"
  puts "| #{$block[2][0]} | #{$block[2][1]} | #{$block[2][2]} |"
  puts "x---x---x---x"
  
  # puts "Welcome to Tic-Tac-Toe!"
  # puts "\n"
  # puts "What's the name of the first player?"
  
  # player1 = gets.chomp
  
  # puts "\n"
  # puts "What's the name of the second player?"
  
  # player2 = gets.chomp
  
  # puts "\n"
  
  # # show_board
  
  # puts "\n"
  # puts "#{player1} will play X and #{player2} will play O"
  # puts "\n"
  # puts "Please #{player1} select an available cell from the board:"
  
  x = gets.chomp.to_i
  check_input(x)
  first = $maped[x]
  $block[first[0]][first[1]] = 'X' unless $block[first[0]][first[1]] == 'O' || $block[first[0]][first[1]] == 'X'
  
  # puts "Please #{player2} select an available cell from the board:"
  
  o = gets.chomp.to_i
  check_input(o)
  second = $maped[o]
  $block[second[0]][second[1]] = 'O' unless $block[second[0]][second[1]] == 'X' || $block[second[0]][second[1]] == 'O'
  
  show_board
end