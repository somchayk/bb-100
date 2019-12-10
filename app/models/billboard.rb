class Billboard < ApplicationRecord
  belongs_to :user
  validates :name, presence: true


  has_many :artists, dependent: :destroy
end
