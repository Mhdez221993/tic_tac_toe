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

def check_input(cell)
  until (1..9).member?(cell)
    puts "Please enter a number between 1 and 9"
    cell = gets.chomp.to_i
  end
end

def check_if_won(player, v)
  case true
  when $one.all?(v) || $two.all?(v) || $three.all?(v) || $four.all?(v) || $five.all?(v) || $six.all?(v) || $seven.all?(v) || $eight.all?(v)
    puts "#{player} wins!"
  end
  p $one
  p $four
end

def boards
  system "clear" or system "cls"
  puts "x---x---x---x"
  puts "| #{$block[0][0]} | #{$block[0][1]} | #{$block[0][2]} |"
  puts "x---x---x---x"
  puts "| #{$block[1][0]} | #{$block[1][1]} | #{$block[1][2]} |"
  puts "x---x---x---x"
  puts "| #{$block[2][0]} | #{$block[2][1]} | #{$block[2][2]} |"
  puts "x---x---x---x"
  $one = $block[0]
  $two = $block[1]
  $three = $block[2]
  $four = [$block[0][0],$block[1][0],$block[2][0]]
  $five = [$block[0][1],$block[1][1],$block[2][1]]
  $six = [$block[0][2],$block[1][2],$block[2][2]]
  $seven = [$block[0][0],$block[1][1],$block[2][2]]
  $eight = [$block[0][2],$block[1][1],$block[2][0]]
end
  
puts "Welcome to Tic-Tac-Toe!"
puts "\n"
puts "What's the name of the first player?"

player1 = gets.chomp

puts "\n"
puts "What's the name of the second player?"

player2 = gets.chomp

while true

  boards
  puts "\n"
  puts "#{player1} will play X and #{player2} will play O"
  puts "\n"
  puts "Please #{player1} select an available cell from the board:"
  
  $x = gets.chomp.to_i
  first = $maped[$x]
  check_input($x)
  while $block[first[0]][first[1]] == 'X' || $block[first[0]][first[1]] == 'O'
    puts "Please choose a valid cell"
    $x = gets.chomp.to_i
    first = $maped[$x]
    check_input($x)
  end
  $block[first[0]][first[1]] = 'X'
  show_board
  p $counter
  check_if_won(player1, 'X')

  puts "Please #{player2} select an available cell from the board:"
  
  $o = gets.chomp.to_i
  second = $maped[$o]
  check_input($o)
  while $block[second[0]][second[1]] == 'X' || $block[second[0]][second[1]] == 'O'
    puts "Please choose a valid cell"
    $o = gets.chomp.to_i
    second = $maped[$o]
    check_input($o)
  end
  $block[second[0]][second[1]] = 'O'
  show_board
  $counter
  check_if_won(player2, 'O')
end
