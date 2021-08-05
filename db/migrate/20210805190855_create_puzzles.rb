class CreatePuzzles < ActiveRecord::Migration[6.1]
  def change
    create_table :puzzles do |t|
      t.string :title
      t.string :contents

      t.timestamps
    end
  end
end
