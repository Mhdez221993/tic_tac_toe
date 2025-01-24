module TicTacToe
  class Board
    attr_accessor :grid

    def initialize
      @grid = default_grid
    end

    def default_grid
      (1..9).each_slice(3).to_a
    end

    def get_cell(row, col)
      grid[row][col]
    end

    def set_cell(row, col, value)
      grid[row][col] = value
    end
  end
end
