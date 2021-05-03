require_relative '../lib/game.rb'
require_relative '../lib/player.rb'
require_relative '../lib/board.rb'

module TicTacToe
    describe Game do
    let(:mockPlayer) { Player.new("Safa", "Moises") }
      describe ".initialize" do
        it "return the name of the players" do
            game = Game.new(mockPlayer)
            expect(game.player.player1).to eq "Safa"
        end
      end
    end
end

  