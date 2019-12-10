class Song < ApplicationRecord
  belongs_to :aritst

  validates :name, presence: true

  belongs_to :artist
end
