#!/usr/bin/env ruby
require_relative '../lib/game'
require_relative '../lib/board'
require_relative '../lib/player'

def verify_name(name)
  while name.strip.empty?
    puts 'Please type a valid name:'
    name = gets.chomp
  end
  name
end

def clear_screen
  system 'clear' or system 'cls'
end

puts 'Welcome to Tic-Tac-Toe!'
puts "\n"

puts "What's the name of the first player?"
player1 = verify_name(gets.chomp)

puts "\n"
puts "What's the name of the second player?"
player2 = verify_name(gets.chomp)

puts "\n"

player = TicTacToe::Player.new(player1, player2)
game = TicTacToe::Game.new(player)

module TicTacToe
  class Game
    def show_board(game)
      b = game.board
      clear_screen
      puts 'x---x---x---x'
      puts "| #{b.get_cell(0, 0)} | #{b.get_cell(0, 1)} | #{b.get_cell(0, 2)} |"
      puts 'x---x---x---x'
      puts "| #{b.get_cell(1, 0)} | #{b.get_cell(1, 1)} | #{b.get_cell(1, 2)} |"
      puts 'x---x---x---x'
      puts "| #{b.get_cell(2, 0)} | #{b.get_cell(2, 1)} | #{b.get_cell(2, 2)} |"
      puts 'x---x---x---x'
      puts "\n"
    end

    def call_player(player)
      puts "It's #{player}'s turn. Enter a number between 1 and 9:"
      number = gets.chomp.to_i
      until number.between?(1, 9)
        puts 'Invalid input. Please enter a number between 1 and 9:'
        number = gets.chomp.to_i
      end
      number.to_s
    end

    def call_draw
      puts "\nIt's a tie!\n\n"
      play_again?
    end

    def play_again?
      puts 'Do you want to play again? [Y/N]'
      ans = gets.chomp.upcase
      case ans
      when 'Y'
        clear_screen
        system 'bin/main.rb'
      when 'N'
        clear_screen
        exit
      else
        puts 'Invalid input. Please enter Y or N.'
        play_again?
      end
    end

    def announce_winner(winner)
      puts "The winner is #{winner}"
    end
  end
end

puts "\n#{player1} will play X and #{player2} will play O\n\n"

game.play
