class Board
    attr_reader :board,
                :length,
                :width,
                :winner


    def initialize()
        @board = create_board()
    end

    def create_board()
        @length = 6
        @width = 7
        Array.new(@length) {Array.new(@width, ".")}
    end
    
    def display_board()
        puts ["A", "B", "C", "D", "E", "F", "G"].join(" ")

        @board.each do |row|
            puts row.each { |column| column }.join(" ")
        end
    end

    def update_board(move, token)
        num = @length-1

        if(check_move(move))
            loop do
                if @board[num][move] == "."
                    @board[num][move] = token
                    break
                else
                    num -= 1
                end
            end
        end
    end

    def convert_move(move)
        column_names = {"A" => 0, "B" => 1, "C" => 2, "D" => 3, "E" => 4, "F" => 5, "G" => 6}
        column_names[move]
    end

    def check_move(move)
        num = @length-1
        while num >= 0
            if(@board[num][move] == ".")
                return true
                break
            end
            num -= 1
        end
        return false
    end

    def check_win()
        if(check_horizontal() || check_vertical() || check_diagonal())
            return true
        else
            return false
        end
    end

    def check_horizontal()
        @board.each do |row|
            if row.join('').include?("XXXX")
                @winner = "X"
                return true
            elsif row.join('').include?("OOOO")
                @winner = "O"
                return true
            end
        end
        return false
    end

    def check_vertical()
        column = []

        @width.times do |w_index|
            @length.times do |l_index|
                column << @board[l_index][w_index]
            end
            if column.join('').include?("XXXX")
                @winner = "X"
                return true
                break
            elsif column.join('').include?("OOOO")
                @winner = "O"
                return true
                break
            end
            column = []
        end

        return false
    end

    def check_diagonal()
        diagonal = []
        anti_diagonal = []

        @board.each do |row|
            
        end

        return false
    end
end