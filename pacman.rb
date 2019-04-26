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

  def move
    if @current_facing == 'NORTH'
      place(@current_position[0] - 1, @current_position[1], @current_facing)
    elsif @current_facing == 'SOUTH'
      place(@current_position[0] + 1, @current_position[1], @current_facing)
    elsif @current_facing == 'EAST'
      place(@current_position[0], @current_position[1] - 1, @current_facing)
    elsif @current_facing == 'WEST'
      place(@current_position[0], @current_position[1] + 1, @current_facing)
    end
  end
end

pacman = Pacman.new
pacman.report
pacman.place(1, 2, 'NORTH')
pacman.report
pacman.move
pacman.report
pacman.place(1, 2, 'SOUTH')
pacman.report
pacman.move
pacman.report
pacman.place(1, 2, 'WEST')
pacman.report
pacman.move
pacman.report
pacman.place(1, 2, 'EAST')
pacman.report
pacman.move
pacman.report
pacman.place(4, 4, 'WEST')
pacman.report
pacman.move
pacman.report

# pacman.place(3, 4, 'SOUTH')
# pacman.report
