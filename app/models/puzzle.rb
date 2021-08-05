class Puzzle < ApplicationRecord
  attr_accessor :content_file

  before_validation :read_content_file
  validates :title, :contents, presence: true

  private

  def read_content_file
    return if content_file.blank?

    self.contents = content_file.read
  end
end
