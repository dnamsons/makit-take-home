class PuzzlesController < ApplicationController
  before_action :set_puzzle, only: %i[show destroy]

  # GET /puzzles or /puzzles.json
  def index
    @puzzles = Puzzle.all
  end

  # GET /puzzles/1 or /puzzles/1.json
  def show
  end

  # GET /puzzles/new
  def new
    @puzzle = Puzzle.new
  end

  # POST /puzzles or /puzzles.json
  def create
    @puzzle = Puzzle.new(puzzle_params)

    if @puzzle.save
      redirect_to puzzle_path(@puzzle), notice: "Puzzle was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # DELETE /puzzles/1 or /puzzles/1.json
  def destroy
    @puzzle.destroy

    redirect_to puzzles_url, notice: "Puzzle was successfully destroyed."
  end

  private

  def set_puzzle
    @puzzle = Puzzle.find(params[:id])
  end

  def puzzle_params
    params.require(:puzzle).permit(:title, :content_file)
  end
end
