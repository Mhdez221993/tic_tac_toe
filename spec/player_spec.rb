require_relative '../lib/player.rb'

module TicTacToe
    describe Player do
      describe "#initialize" do
        it "save two plyers" do
            player = Player.new('Safa', 'Moises')
            expect(player.player1).to eq "Safa"
        end
        
        it "save two plyers" do
            player = Player.new('Safa', 'Moises')
            expect(player.player2).to eq "Moises"
        end 
      end
    end
end
  