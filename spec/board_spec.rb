require_relative '../lib/board'

module TicTacToe
  describe Board do
    describe '#default_grid' do
      it 'not to rise erro without parmeter' do
        uno = 0
        arr = Array.new(3) { Array.new(3) { uno += 1 } }
        board = Board.new
        expect(board.default_grid).to eq arr
      end
    end
  end
end
