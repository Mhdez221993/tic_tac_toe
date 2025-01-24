module TicTacToe
  class Player
    attr_reader :player1, :player2, :player1_symbol, :player2_symbol

    def initialize(player1, player2)
      @player1 = player1
      @player2 = player2
      @player1_symbol = 'X'
      @player2_symbol = 'O'
    end
  end
end