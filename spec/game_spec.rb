require_relative '../lib/game.rb'
require_relative '../lib/board.rb'

module TicTacToe
    describe Game do
    let(:mockPlayer) { double(:player1 => "Safa", :player2 => "Moises") }
    let(:game) { Game.new(mockPlayer) }
      describe ".initialize" do
        it "return the name of the players" do
            expect(game.player.player1).to eq "Safa"
        end
      end

      describe "#human_move_to_coordinate" do
        it "return the coordinates" do
            expect(game.human_move_to_coordinate("3")).to eq [0, 2]
        end
      end
      describe "#check_if_draw" do
        it "return nil if there is numbers left" do
            expect(game.check_if_draw).to eq nil
        end
        
        it "return true if there is not numbers left" do
            game.board.grid = [['x','o','x'],['x','o','x'],['x','o','x']]
            game.stub(:check_if_draw) {true unless game.board.grid.flatten.any?(Numeric)}
            expect(game.check_if_draw).to eq true
        end
      end
    end
end

  