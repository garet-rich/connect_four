class Gameboard
    def initialize()
        create_board()
        display_board()
        update_board(0, "x")
    end

    def create_board()
        #creates a standard grid with 7 columns and 6 rows
        @board = [
            [".", ".", ".", ".", ".", ".", "."],
            [".", ".", ".", ".", ".", ".", "."],
            [".", ".", ".", ".", ".", ".", "."],
            [".", ".", ".", ".", ".", ".", "."],
            [".", ".", ".", ".", ".", ".", "."],
            [".", ".", ".", ".", ".", ".", "."],
        ]
    end
    
    def display_board()
        #displays column numbers for gameplay
        puts ["A", "B", "C", "D", "E", "F", "G"].join(" ")

        #iterates through all items, adds lines together with a space
        @board.each do |row|
            puts row.each { |column| column}.join(" ")
        end
    end

    def update_board(move, player)
    end
end

tester = Gameboard.new()