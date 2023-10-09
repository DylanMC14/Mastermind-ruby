class Table
    attr_accessor :table_board

    def initialize
        @table_board = Array.new(12)
    end

    def table_board()
        puts "_____________________"
        @table_board.each_with_index {
            |guess, index| puts "| ---- | .... |" 
        }
        puts "_____________________"
    end

end

table = Table.new
table.table_board()
