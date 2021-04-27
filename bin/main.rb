#!/usr/bin/env ruby
# rubocop: disable Metrics/PerceivedComplexity, Metrics/CyclomaticComplexity

class Game
  def initialize
    @block = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    @maped = {
      1 => [0, 0],
      2 => [0, 1],
      3 => [0, 2],
      4 => [1, 0],
      5 => [1, 1],
      6 => [1, 2],
      7 => [2, 0],
      8 => [2, 1],
      9 => [2, 2]
    }

    def call_variables
      @one = @block[0]
      @two = @block[1]
      @three = @block[2]
      @four = [@block[0][0], @block[1][0], @block[2][0]]
      @five = [@block[0][1], @block[1][1], @block[2][1]]
      @six = [@block[0][2], @block[1][2], @block[2][2]]
      @seven = [@block[0][0], @block[1][1], @block[2][2]]
      @eight = [@block[0][2], @block[1][1], @block[2][0]]
    end

    def play_again?
      puts 'Play Again? [Y/N]'
      ans = gets.chomp.to_s.upcase
      case ans
      when 'Y'
        system 'clear' or system 'cls'
        Game.new
      when 'N'
        system 'clear' or system 'cls'
        exit
      end
      play_again?
    end

    def check_input(cell)
      new_cell = cell
      until (1..9).member?(new_cell)
        puts 'Please enter a number between 1 and 9'
        new_cell = gets.chomp.to_i
      end
      new_cell
    end

    def check_if_won(player, v)
      case true
      when @one.all?(v) || @two.all?(v) || @three.all?(v) || @four.all?(v) || @five.all?(v) || @six.all?(v) ||
        @seven.all?(v) || @eight.all?(v)
        puts "#{player} wins!"
        puts "\n"
        play_again?
      end
    end

    def verify_name(name)
      player = name
      while player.empty?
        puts 'pleate type a valid name'
        player = gets.chomp
      end
      player
    end

    def show_board
      system 'clear' or system 'cls'
      call_variables
      puts 'x---x---x---x'
      puts "| #{@block[0][0]} | #{@block[0][1]} | #{@block[0][2]} |"
      puts 'x---x---x---x'
      puts "| #{@block[1][0]} | #{@block[1][1]} | #{@block[1][2]} |"
      puts 'x---x---x---x'
      puts "| #{@block[2][0]} | #{@block[2][1]} | #{@block[2][2]} |"
      puts 'x---x---x---x'
      puts "\n"
    end

    puts 'Welcome to Tic-Tac-Toe!'
    puts "\n"
    puts "What's the name of the first player?"

    player1 = verify_name(gets.chomp)

    puts "\n"
    puts "What's the name of the second player?"

    player2 = verify_name(gets.chomp)

    puts "\n"

    show_board

    puts "\n"
    puts "#{player1} will play X and #{player2} will play O"
    puts "\n"

    @counter = 9
    while @counter.positive?
      puts "Remaining moves #{@counter}."
      puts "\n"
      puts "It's #{player1} turn:"
      @x = gets.chomp.to_i
      @x = check_input(@x)
      puts "\n"
      first = @maped[@x]
      while @block[first[0]][first[1]] == 'X' || @block[first[0]][first[1]] == 'O'
        puts 'Please choose a valid cell'
        @x = gets.chomp.to_i
        @x = check_input(@x)
        first = @maped[@x]
      end
      @block[first[0]][first[1]] = 'X'
      show_board
      check_if_won(player1, 'X')
      @counter -= 1
      if @counter.zero?
        puts "\n"
        puts 'It\'s a tie!'
        puts "\n"
        play_again?
      end

      puts "remaining moves #{@counter}."
      puts "\n"
      puts "Now it's the turn of #{player2}:"
      @o = gets.chomp.to_i
      puts "\n"
      second = @maped[@o]
      check_input(@o)
      while @block[second[0]][second[1]] == 'X' || @block[second[0]][second[1]] == 'O'
        puts 'Please choose a valid cell'
        @o = gets.chomp.to_i
        @o = check_input(@o)
        second = @maped[@o]
      end
      @block[second[0]][second[1]] = 'O'
      show_board
      check_if_won(player2, 'O')
      show_board
      @counter -= 1
    end
  end
end

Game.new

# rubocop: enable Metrics/ModuleLength
# rubocop: enable Metrics/PerceivedComplexity, Metrics/CyclomaticComplexity
