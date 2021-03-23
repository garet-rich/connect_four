class GameBoard
    @@session_counter = 0

    def initialize(player_Name1, player_Name2)
        @player_Name1 = player_Name1
        @player_Name2 = player_Name2
        @@session_counter += 1

        #create ID for current game based on player names and the total number of games played
        setGameID(@player_Name1, @player_Name2)

        createGameBoard()
        displayGameBoard()
    end

    def setGameID(player_Name1, player_Name2)
        @gameID = player_Name1 + player_Name2 + @@session_counter.to_s
    end

    def createGameBoard()
        
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

    def displayGameBoard()
        #displays column numbers for gameplay
        puts [1, 2, 3, 4, 5, 6, 7].join(" ")

        #iterates through all items, adds lines together with a space
        @board.each do |columns|
            puts columns.each { |row| row}.join(" ")
        end
    end
end


tester = GameBoard.new("Timmy", "Jimmy")
