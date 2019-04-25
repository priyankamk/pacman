# frozen_string_literal: true

require_relative '../pacman'

RSpec.describe Pacman do
  let(:pacman) { Pacman.new }
  describe '#place' do
    it 'places pacman in correct position' do
      pacman.place(1, 4)
      expect(pacman.board[1][4]).to eq('P')
    end

    it 'records the current position' do
      pacman.place(2, 4)
      expect(pacman.current_position).to eq([2, 4])
    end

    it 'clears out previous position when new place is called' do
      pacman.place(3, 2)
      pacman.place(2, 4)
      expect(pacman.board[3][2]).to eq(0)
    end
  end
end
