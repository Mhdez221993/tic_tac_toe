require_relative '../lib/board'

module TicTacToe
  describe Board do
    let(:board) { Board.new }
    let(:arr) { [[1, 2, 3], [4, 5, 6], [7, 8, 9]] }

    describe '.initialize' do
      it 'return three nested arrys' do
        expect(board.grid).to eq arr
      end
    end

    describe '#default_grid' do
      it 'return three nested arrys' do
        expect(board.default_grid).to eq arr
      end
    end

    describe '#get_cell' do
      it 'return number nine' do
        expect(board.get_cell(2, 2)).to eq 9
      end

      it 'raise error if not arguments' do
        expect{ board.get_cell }.to raise_error
      end
    end

    describe '#set_cell' do
      it 'return and X' do
        expect(board.set_cell(2, 2, 'X')).to eq 'X'
      end

      it 'raise error if not arguments' do
        expect{ board.set_cell }.to raise_error
      end
    end
  end
end
