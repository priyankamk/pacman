# frozen_string_literal: true

require_relative '../pacman'

RSpec.describe Pacman do
  let(:pacman) { Pacman.new }
  describe '#place' do
    it 'places pacman in correct position' do
      pacman.place(1, 4, 'NORTH')
      expect(pacman.board[1][4]).to eq('P')
    end

    it 'records the current position' do
      pacman.place(0, 0, 'NORTH')
      expect(pacman.current_position).to eq([0, 0])
    end

    it 'clears out previous position when new place is called' do
      pacman.place(3, 2, 'SOUTH')
      pacman.place(2, 4, 'EAST')
      expect(pacman.board[3][2]).to eq(0)
    end

    it 'should face NORTH' do
      pacman.place(2, 3, 'NORTH')
      expect(pacman.current_facing).to eq('NORTH')
    end
  end

  describe '#clear' do
    it 'clear the board to 0' do
      pacman.clear(1, 2)
      expect(pacman.board[1][2]).to eq(0)
    end
  end
end
