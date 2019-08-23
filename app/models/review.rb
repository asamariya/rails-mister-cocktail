class Review < ApplicationRecord
  belongs_to :cocktail

  validates :content, presence: true, null: false
  validates :rating, presence: true, null: false, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }
end
