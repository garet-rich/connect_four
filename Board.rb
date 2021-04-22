class Board
    attr_accessor :board

    def initialize()
        @board = create_board()
    end

    def create_board()
        #creates 6 multable arrays of 7 length, standard connect_for gameboard
        #Decimals are used as blank space
        board = Array.new(6) {Array.new(7, ".")}

        return board
    end
    
    def display_board()
        #displays column numbers used in gameplay
        puts ["A", "B", "C", "D", "E", "F", "G"].join(" ")

        #iterates through all items, adds lines together with a space
        @board.each do |row|
            puts row.each { |column| column}.join(" ")
        end
    end

    def update_board(column, player)
        #
        column_names = {"A" => 0, "B" => 1, "C" => 2, "D" => 3, "E" => 4, "F" => 5, "G" => 6}
        column_choice = column_names[column]

        #
        @board.each_with_index do |row, row_index|
            if(@board[row_index][column_choice] != ".")
                @board[row_index-1][column_choice] = player
            elsif(row_index = @board.length-1 and @board[row_index][column_choice] == ".")
                @board[row_index][column_choice] = player
                break
            end
        end
    end

    def check_win()

    end
end

tester = Board.new()