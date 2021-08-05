require 'rails_helper'

RSpec.describe PuzzlesHelper, type: :helper do
  describe '#formatted_puzzle_row' do
    it 'replaces zeroes with underscores' do
      expect(helper.formatted_puzzle_row('130250070')).to eq(['1', '3', '_', '2', '5', '_', '_', '7', '_'])
    end
  end
end
