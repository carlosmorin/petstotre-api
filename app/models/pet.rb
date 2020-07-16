class Pet < ApplicationRecord
  belongs_to :category

  validates :name, presence: true

  enum status: %i[available pending sold]
end
