# frozen_string_literal: true

# Category model
class Category < ApplicationRecord
  has_many :pets, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }

  accepts_nested_attributes_for :pets, allow_destroy: true
end
