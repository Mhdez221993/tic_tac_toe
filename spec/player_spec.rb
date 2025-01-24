require_relative '../lib/player'

module TicTacToe
  describe Player do
    describe '#initialize' do
      it 'save two plyers' do
        player = Player.new('Safa', 'Moises')
        expect(player.player1).to eq 'Safa'
      end

      it 'save two plyers' do
        player = Player.new('Safa', 'Moises')
        expect(player.player2).to eq 'Moises'
      end

      it 'thrown error if no arguments' do
        expect { Player.new }.to raise_error
      end

      it 'assigns symbols to players' do
        player = Player.new('Safa', 'Moises')
        expect(player.player1_symbol).to eq 'X'
        expect(player.player2_symbol).to eq 'O'
      end
    end
  end
end
