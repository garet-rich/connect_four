class Gameboard
    @@session_counter = 0

    def initialize(player_Name1, player_Name2)
        @player_Name1 = player_Name1
        @player_Name2 = player_Name2
        @@session_counter += 1

        #create ID for current game based on player names and the total number of games played
        setGameID(@player_Name1, @player_Name2)

        createBoard()
        displayBoard()
        updateBoard(1,1)
        displayBoard()
    end

    def setGameID(player_Name1, player_Name2)
        @gameID = player_Name1 + player_Name2 + @@session_counter.to_s
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

tester = Gameboard.new("Timmy", "Jimmy")
