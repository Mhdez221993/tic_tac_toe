require_relative '../lib/board'

module TicTacToe
  describe Board do
    describe '#initialize' do
      it 'not to rise erro without parmeter' do
        expect(Board.new).to_not raise_error
      end
    end
  end
end
