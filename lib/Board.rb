class Board

    attr_reader :board

    def initialize()
        @board = create_board()
    end

    def create_board()
        Array.new(6) {Array.new(7, ".")}
    end
    
    def display_board()
        puts ["A", "B", "C", "D", "E", "F", "G"].join(" ")

        @board.each do |row|
            puts row.each { |column| column }.join(" ")
        end
    end

    def update_board(column, player)
        
        column_names = {"A" => 0, "B" => 1, "C" => 2, "D" => 3, "E" => 4, "F" => 5, "G" => 6}
        column_choice = column_names[column]
        
    end

    def check_move(move, player)
        @board.each_with_index do |row, row_index|
            if(@board[row_index][move] != ".")
                p "You have selected a full column, please pick another"
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