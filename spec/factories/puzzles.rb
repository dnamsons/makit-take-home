FactoryBot.define do
  factory :puzzle do
    sequence(:title) { |n| "Puzzle #{n}" }
    contents do
      <<~TEXT
        003020600
        900305001
        001806400
        008102900
        700000008
        006708200
        002609500
        800203009
        005010300
      TEXT
    end
  end
end
