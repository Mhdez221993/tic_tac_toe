require_relative '../lib/board.rb'

module TicTacToe
    describe Board do
      describe ".initialize" do
        it "return three nested arrys" do
            arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
            board = Board.new
            expect(board.grid).to eq arr
        end
      end

      describe "#default_grid" do
        it "return three nested arrys" do
            arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
            board = Board.new
            expect(board.default_grid).to eq arr
        end
      end

      describe "#get_cell" do
        it "return number nine" do
            board = Board.new
            expect(board.get_cell(2,2)).to eq 9
        end
      end

      describe "#set_cell" do
        it "return and X" do
            board = Board.new
            expect(board.set_cell(2,2,"X")).to eq "X"
        end
      end
    end
end
  