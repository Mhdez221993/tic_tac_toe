#!/usr/bin/env ruby
require_relative '../lib/game'
require_relative '../lib/board'
require_relative '../lib/player'

def verify_name(name)
  player = name
  while player.empty?
    puts 'pleate type a valid name'
    player = gets.chomp
  end
  player
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
      system 'clear' or system 'cls'
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
      puts "It's #{player} turn:"
      number = gets.chomp.to_i
      until number.between?(1, 9)
        puts 'Please enter a number between 1 and 9'
        number = gets.chomp.to_i
      end
      number.to_s
    end

    def call_draw
      puts "\n"
      puts 'It\'s a tie!'
      puts "\n"
      play_again?
    end

    def play_again?
      puts 'Do you wanna try again? [Y/N]'
      ans = gets.chomp.to_s.upcase
      case ans
      when 'Y'
        system 'clear' or system 'cls'
        system 'bin/main.rb'
      when 'N'
        system 'clear' or system 'cls'
        exit
      end
      play_again?
    end

    def announce_winner(winner)
      puts "The winner is #{winner}"
    end
  end
end
puts "\n"
puts "#{player1} will play X and #{player2} will play O"
puts "\n"

game.play
