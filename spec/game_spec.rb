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

      describe "#human_move_to_coordinate" do
        it "return the coordinates" do
            game = Game.new(mockPlayer)
            expect(game.human_move_to_coordinate("3")).to eq [0, 2]
        end
      end
      describe "#check_if_draw" do
        it "return nil if there is numbers left" do
            game = Game.new(mockPlayer)
            expect(game.check_if_draw).to eq nil
        end
        
        it "return true if there is not numbers left" do
            board = Board.new
            board.grid = [['x','o','x'],['x','o','x'],['x','o','x']]
            game = Game.new(mockPlayer,board)
            game.stub(:check_if_draw) {true unless board.grid.flatten.any?(Numeric)} 
            expect(game.check_if_draw).to eq true
        end
      end
    end
end

  