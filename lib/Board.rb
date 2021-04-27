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
            puts row.each { |column| column }.join(" ")
        end
    end

    def update_board(column, player)
        #
        column_names = {"A" => 0, "B" => 1, "C" => 2, "D" => 3, "E" => 4, "F" => 5, "G" => 6}
        column_choice = column_names[column]
        
        #check_move(move, player)

        # @board.each_with_index do |row, row_index|
        #     if(@board[row_index][column_choice] != ".")
        #         @board[row_index-1][column_choice] = player
        #     elsif(row_index = @board.length-1 and @board[row_index][column_choice] == ".")
        #         @board[row_index][column_choice] = player
        #         break
        #     end
        # end
    end

    def check_move(move, player)
        @board.each_with_index do |row, row_index|
            if(@board[row_index][move] != "."
                puts "You have selected a full column, please pick another"
                return false
            else
                return true
            end
        end
    end

    def check_win()
        if(check_vertical_horizontal() or check_diagonal())
            return true
        else
            return false
        end
    end

    def check_vertical_horizontal()
        #check horizontal
        @board.each_with_index do |row, row_index|
            if row.any? {|item| item.count("X") == 4 or item.count("O") == 4}
                puts "Yay!"
            end
        end
        return false
    end

    def check_diagonal()
        return false
    end
end

tester = Board.new()