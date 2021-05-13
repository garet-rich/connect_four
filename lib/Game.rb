require_relative 'board'
require_relative 'player'

class Game
    def initialize()
        p "Welcome to Connect Four! The game will be played with 7 columns and 6 rows"
        p "Please enter your name"
        @player_name = gets.chomp
        p "Hello, #{@player_name} your token is X"
        p "Type 'GO' to start the game"
        p "------------------------------------------------------------------"


        player1 = Player.new(@player_name, "X")
        player2 = Player.new("Computer","O")

        @board_instance = Board.new()

        while @board_instance.check_win() == false
        end
    end
end

tester = Game.new()
