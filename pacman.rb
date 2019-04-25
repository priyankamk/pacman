# frozen_string_literal: true

class Pacman
  attr_reader :board, :current_position

  def initialize
    @board = Array.new(5) { Array.new(5) { 0 } }
    @current_position = [0, 0]
    @board[0][0] = 'P'
  end

  def place(x, y)
    puts "Placing Pacman in Position: (#{x},#{y})"
    clear(@current_position[0], @current_position[1])
    @board[x][y] = 'P'
    @current_position = [x, y]
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

pacman = Pacman.new
pacman.report
pacman.place(1, 2)
pacman.report
pacman.place(3, 4)
pacman.report
