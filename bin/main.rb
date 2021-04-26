#!/usr/bin/env ruby

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

$one = $block[0].all?('X')
$two = $block[1].all?('X')
$three = $block[2].all?('X')
$four = [$block[0][0],$block[1][0],$block[2][0]].all?('X')
$five = [$block[0][1],$block[1][1],$block[2][1]].all?('X')
$six = [$block[0][2],$block[1][2],$block[2][2]].all?('X')
$seven = [$block[0][0],$block[1][1],$block[2][2]].all?('X')
$eight = [$block[0][2],$block[1][1],$block[2][0]].all?('X')

$one_O = $block[0].all?('O')
$two_O = $block[1].all?('O')
$three_O = $block[2].all?('O')
$four_O = [$block[0][0],$block[1][0],$block[2][0]].all?('O')
$five_O = [$block[0][1],$block[1][1],$block[2][1]].all?('O')
$six_O = [$block[0][2],$block[1][2],$block[2][2]].all?('O')
$seven_O = [$block[0][0],$block[1][1],$block[2][2]].all?('O')
$eight_O = [$block[0][2],$block[1][1],$block[2][0]].all?('O')

def check_input(cell)
  until (1..9).member?(cell)
    puts "Please enter a number between 1 and 9"
    cell = gets.chomp.to_i
  end
  unless $block[$first[0]][$first[1]] == 'O' || $block[$first[0]][$first[1]] == 'X'
  end
  unless $block[$second[0]][$second[1]] == 'X' || $block[$second[0]][$second[1]] == 'O'
    puts "Please choose a valid cell"
    cell = gets.chomp.to_i
  end
end

def check_if_won
  case true
  when $one || $two || $three || $four || $five || $six || $seven || $eight
  puts "#{$player1} wins!"
  when $one_O || $two_O || $three_O || $four_O || $five_O || $six_O || $seven_O || $eight_O
  puts "#{$player2} wins!"
  
  end
end

def show_board
  counter = 0
  system "clear" or system "cls"
  counter += 1
  if counter == 9
    puts "Draw!"
  end
end
  
puts "Welcome to Tic-Tac-Toe!"
puts "\n"
puts "What's the name of the first player?"

$player1 = gets.chomp

puts "\n"
puts "What's the name of the second player?"

$player2 = gets.chomp

while true
  p $block
  puts "x---x---x---x"
  puts "| #{$block[0][0]} | #{$block[0][1]} | #{$block[0][2]} |"
  puts "x---x---x---x"
  puts "| #{$block[1][0]} | #{$block[1][1]} | #{$block[1][2]} |"
  puts "x---x---x---x"
  puts "| #{$block[2][0]} | #{$block[2][1]} | #{$block[2][2]} |"
  puts "x---x---x---x"
  
  puts "\n"
  puts "#{$player1} will play X and #{$player2} will play O"
  puts "\n"
  puts "Please #{$player1} select an available cell from the board:"
  
  x = gets.chomp.to_i
  check_input(x)
  first = $maped[x]
  $block[$first[0]][$first[1]] = 'X' unless $block[$first[0]][$first[1]] == 'O' || $block[$first[0]][$first[1]] == 'X'
  check_if_won
  show_board

  puts "Please #{$player2} select an available cell from the board:"
  
  o = gets.chomp.to_i
  check_input(o)
  second = $maped[o]
  $block[$second[0]][$second[1]] = 'O'
  show_board
  check_if_won
end
