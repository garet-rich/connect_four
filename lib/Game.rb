require_relative 'Board'

class Game
    def initialize()
        puts "Hello, what is your name?"
        @player_name = gets.chomp
        @board_instance = Board.new()

        while @board_instance.check_win() == false
            @board_instance.display_board()
            hold1 = player_move()
            @board_instance.update_board(hold1, "X")
            @board_instance.display_board()
            hold2 = computer_move()
            @board_instance.update_board(hold2, "O")
            @board_instance.display_board()
        end
    end

    def player_move()
        puts "Please select a column"
        @move = gets.chomp
        
        return @move
    end
    
    def computer_move()
        @comp_move = ["A", "B", "C", "D", "E", "F", "G"].sample
        return @comp_move
    end
end

tester = Game.new()
