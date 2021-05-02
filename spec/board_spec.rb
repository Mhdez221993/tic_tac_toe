require_relative '../lib/board.rb'

module TicTacToe
    describe Board do
        describe "#default_grid" do
            it "returns 3 nested arrays" do
                board = Board.new
                uno = 0
                arr = Array.new(3) { Array.new(3) { uno += 1 } }
                expect(board.default_grid).to eq(arr)
            end
        end
    end
end
  