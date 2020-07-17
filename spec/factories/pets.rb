# frozen_string_literal: true

FactoryBot.define do
  factory :pet do
    sequence(:name) { |n| "Pet#{n}" }
    status { 'available' }
    category
  end
end
