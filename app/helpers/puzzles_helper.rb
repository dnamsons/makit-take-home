module PuzzlesHelper
  def formatted_puzzle_row(row)
    row.strip.chars.map { |puzzle_cell| puzzle_cell.to_i.zero? ? '_' : puzzle_cell }
  end
end
