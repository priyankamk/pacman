# frozen_string_literal: true

class Pacman
  attr_reader :board, :current_position, :current_facing

  def initialize
    @board = Array.new(5) { Array.new(5) { 0 } }
    @current_position = [0, 0]
    @board[0][0] = 'P'
  end

  def place(x, y, f)
    puts "Placing Pacman in Position: #{x},#{y},#{f}"
    clear(@current_position[0], @current_position[1])
    @board[x][y] = 'P'
    @current_position = [x, y]
    @current_facing = f
  end

  def report
    puts 'Reporting Pacman status'
    @board.each do |row|
      print row
      puts ''
    end
  end

  def clear(x, y)
    @board[x][y] = 0
  end
end

# pacman = Pacman.new
# pacman.report
# pacman.place(1, 2, 'NORTH')
# pacman.report
# pacman.place(3, 4, 'SOUTH')
# pacman.report
