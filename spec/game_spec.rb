require_relative '../lib/game'
require_relative '../lib/board'

module TicTacToe
  describe Game do
    let(:mockPlayer) { double(player1: 'Safa', player2: 'Moises') }
    let(:game) { Game.new(mockPlayer) }
    describe '.initialize' do
      it 'return the name of the players' do
        expect(game.player.player1).to eq 'Safa'
      end
    end

    describe '#human_move_to_coordinate' do
      it 'return the coordinates' do
        expect(game.human_move_to_coordinate('3')).to eq [0, 2]
      end
    end
    describe '#check_if_draw' do
      it 'return nil if there is numbers left' do
        expect(game.check_if_draw).to eq nil
      end

      it 'return true if there is not numbers left' do
        game.board.grid = [%w[x o x], %w[x o x], %w[x o x]]
        game.stub(:check_if_draw) { true unless game.board.grid.flatten.any?(Numeric) }
        expect(game.check_if_draw).to eq true
      end
    end

    describe '#posible_winning' do
      it 'return array with all the possibilities' do
        wins = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
        expect(game.posible_winning).to eq wins
      end
    end

    describe '#check_if_winner' do
      it 'false if all the values in the array are not the same' do
        expect(game.check_if_winner).to eq false
      end

      it 'false if all the values in the array are not the same' do
        game.board.grid = [%w[x x x], %w[x o x], %w[x o x]]
        expect(game.check_if_winner).to eq true
      end
    end

    describe '#play' do
      it 'return nil' do
        game.stub(:play) { nil unless game.check_if_winner }
        expect(game.play).to eq nil
      end
      it 'return nil' do
        game.board.grid = [%w[x x x], %w[x o x], %w[x o x]]
        game.stub(:play) { nil unless game.check_if_winner }
        expect(game.play).to eq nil
      end
    end
  end
end
