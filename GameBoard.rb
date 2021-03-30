class Gameboard
    def initialize()

        #create ID for current game based on player names and the total number of games played
        setGameID()

        createBoard()
        displayBoard()
    end

    def setGameID()
        #Test
    end

    def createBoard()
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

    def displayBoard()
        #displays column numbers for gameplay
        puts [1, 2, 3, 4, 5, 6, 7].join(" ")

        #iterates through all items, adds lines together with a space
        @board.each do |row|
            puts row.each { |column| column}.join(" ")
        end
    end

    def updateBoard(move, player)
        @board.each do |columns|
            columns.each do |row|
            end
        end
    end
end

tester = Gameboard.new()
