module TicTacToe
  class Game
    attr_reader :player, :board

    def initialize(player, board = Board.new)
      @player = player
      @board = board
    end

    def human_move_to_coordinate(human_move)
      mapping = {
        '1' => [0, 0],
        '2' => [0, 1],
        '3' => [0, 2],
        '4' => [1, 0],
        '5' => [1, 1],
        '6' => [1, 2],
        '7' => [2, 0],
        '8' => [2, 1],
        '9' => [2, 2]
      }
      mapping[human_move]
    end

    def check_if_draw
      call_draw unless board.grid.flatten.any?(Numeric)
    end

    def posible_winning
      board.grid +
        board.grid.transpose +
        [[board.get_cell(0, 0), board.get_cell(1, 1), board.get_cell(2, 2)],
         [board.get_cell(0, 2), board.get_cell(1, 1), board.get_cell(2, 0)]]
    end

    def check_if_winner
      posible_winning.each do |arr|
        return true if arr.all? { |v| v == arr[0] }
      end
      false
    end

    def play
      counter = 9
      while counter.positive?
        show_board(self)
        move = call_player(player.player1)
        x, y = human_move_to_coordinate(move)
        board.set_cell(x, y, 'X')
        show_board(self)
        check_if_draw
        if check_if_winner
          announce_winner(player.player1)
          play_again?
        end
        counter -= 1

        show_board(self)
        move = call_player(player.player2)
        x, y = human_move_to_coordinate(move)
        board.set_cell(x, y, 'O')
        show_board(self)
        if check_if_winner
          announce_winner(player.player2)
          play_again?
        end
        counter -= 1
      end
    end
  end
end
