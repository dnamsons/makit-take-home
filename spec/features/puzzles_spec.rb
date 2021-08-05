require 'rails_helper'

RSpec.describe 'Puzzles', type: :feature do
  let!(:puzzle) { create(:puzzle) }

  scenario 'User can see the puzzle index view' do
    visit root_path

    expect(page).to have_content(puzzle.title)
  end

  scenario 'User can create a new puzzle' do
    visit root_path

    click_link 'New Puzzle'

    fill_in 'puzzle_title', with: 'Puzzle Title'
    attach_file 'puzzle_content_file', file_fixture('sample.sudoku')

    click_on 'Create Puzzle'

    expect(page).to have_content("Puzzle was successfully created.")
    expect(page).to have_content('Puzzle Title')
  end
end
