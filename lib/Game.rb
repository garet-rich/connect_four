require_relative 'board'
require_relative 'player'

class Game
    def initialize()
        p "Welcome to Connect_Some! The game will be played with 7 columns and 6 rows"
        p "Please enter your name"
        @player_name = gets.chomp
        p "Hello, #{@player_name} your token is X"
        p "You are playing against the computer, their token is O"
        p "Type 'GO' to start the game"
        p "------------------------------------------------------------------"


        @player1 = Player.new(@player_name, "X")
        @player2 = Player.new("Computer", "O")

        @board = Board.new()
        @board.display_board
    end
end

tester = Game.new()