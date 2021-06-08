require_relative 'board'
require_relative 'player'

class Game
    def initialize()
        p "Welcome to Connect_Some! The game will be played with 7 columns and 6 rows"
        p "You need to place 4 tokens in a row to win"
        p "You can place tokens horizontally, vertically, or diagonally"
        p "Please enter your name"
        @player_name = gets.chomp
        p "Hello, #{@player_name}, your token is X"
        p "You are playing against the computer, their token is O"
        p "------------------------------------------------------------------"


        @player1 = Player.new(@player_name, "X")
        @player2 = Player.new("Computer", "O")

        @board = Board.new()

        while @board.check_win == false
            @board.display_board
            p "Please pick a column"
            play = gets.chomp

            if("ABCDEFG".include?(play.upcase))
                move = @board.convert_move(play.upcase)
                if(@board.check_move(move))
                    @board.update_board(move, @player1.token)
                else
                    p "That column is not valid"
                end
            else
                p "Please select a valid column name"
            end

            computer_play = rand(@board.width)

            if(@board.check_move(computer_play))
                @board.update_board(computer_play, @player2.token)
            else
                computer_play = rand(@board.width)
                @board.update_board(computer_play, @player2.token)
            end
        end

        if(@board.winner == @player1.token)
            @board.display_board
            p "#{@player1.name} has won the game!"
        elsif(@board.winner == @player2.token)
            @board.display_board
            p "#{@player2.name} has won the game!"
        else
            p "The game has ended in a draw"
        end
    end
end

tester = Game.new()