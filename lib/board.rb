module TicTacToe
  class Board
    attr_accessor :grid

    def initialize(input = {})
      @grid = input.fetch(:grid, default_grid)
    end

    def default_grid
      uno = 0
      Array.new(3) { Array.new(3) { uno += 1 } }
    end

    def get_cell(xxx, yyy)
      grid[xxx][yyy]
    end

    def set_cell(xxx, yyy, value)
      grid[xxx][yyy] = value
    end
  end
end
