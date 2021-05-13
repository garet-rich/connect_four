require_relative "game"

class player
    def initialize(player_name)
        @player_name = player_name
    end

    def name
        return @player_name
    end
end