require_relative 'Board'
class Game
    def initialize()
        puts "Hello, what is your name?"
        @player_name = gets.chomp
        @board_instance = Board.new()

        
    end

    def player_move()
        puts "Please select a column"
        @move = gets.chomp
        return @move
    end

    def computer_move()
        @comp_move = rand(0..6)
    end
end

tester = Game.new()
