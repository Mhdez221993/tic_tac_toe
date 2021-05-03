require_relative '../lib/board.rb'

module TicTacToe
    describe Board do
      describe ".initialize" do
        it "return un empty hash" do
            arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
            board = Board.new
            expect(board.grid).to eq arr
        end
      end
    end
end
  