class Player

  def self.verify_name(name)
    player = name
    while player.empty?
        puts 'pleate type a valid name'
        player = gets.chomp
    end
    player
  end
end

