require 'rails_helper'

RSpec.describe Puzzle, type: :model do
  let(:sample_contents) do
    <<~TEXT
      102056084
      030000000
      000000000
      004000000
      000000060
      000500000
      000000000
      000000090
      008000001
    TEXT
  end

  it 'is valid with valid attributes' do
    puzzle = Puzzle.new
    puzzle.title = 'title'
    puzzle.contents = sample_contents

    expect(puzzle).to be_valid
  end

  it 'is not valid without a title' do
    puzzle = Puzzle.new(contents: sample_contents)

    expect(puzzle).to_not be_valid
    expect(puzzle.errors.messages[:title]).to be_present
  end

  it 'is not valid without contents' do
    puzzle = Puzzle.new(title: 'Example')

    expect(puzzle).to_not be_valid
    expect(puzzle.errors.messages[:contents]).to be_present
  end

  context 'with a content file' do
    let(:sample_file) { file_fixture('sample.sudoku') }

    it 'assigns contents from the file' do
      puzzle = Puzzle.new(title: 'Example')

      puzzle.content_file = sample_file
      puzzle.save

      expect(puzzle.contents).to eq(sample_file.read)
    end
  end
end
