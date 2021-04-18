class Board
    attr_accessor :board

    def initialize()
        @board = create_board()
        display_board()

    end

    def create_board()
        #creates a standard grid with 7 columns and 6 rows
        #Decimals are used to denote blank space
        board = [
            [".", ".", ".", ".", ".", ".", "."],
            [".", ".", ".", ".", ".", ".", "."],
            [".", ".", ".", ".", ".", ".", "."],
            [".", ".", ".", ".", ".", ".", "."],
            [".", ".", ".", ".", ".", ".", "."],
            [".", ".", ".", ".", ".", ".", "."],
        ]

        return board
    end
    
    def display_board()
        #displays column numbers for gameplay
        puts ["A", "B", "C", "D", "E", "F", "G"].join(" ")

        #iterates through all items, adds lines together with a space
        @board.each do |row|
            puts row.each { |column| column}.join(" ")
        end
    end

    def update_board(col, player)
        col_names = {"A" => 0, "B" => 1, "C" => 2, "D" => 3, "E" => 4, "F" => 5, "G" => 6}
        column_choice = col_names[col]
    end
end

tester = Board.new()