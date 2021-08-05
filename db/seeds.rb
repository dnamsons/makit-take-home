puzzle_string = <<~SUDOKU
  003020600
  900305001
  001806400
  008102900
  700000008
  006708200
  002609500
  800203009
  005010300
SUDOKU

Puzzle.create(title: 'Example', contents: puzzle_string)
