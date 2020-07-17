# frozen_string_literal: true

# Category Serializer
class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :pets, if: -> { show_pets }

  def show_pets
    @instance_options[:show_pets]
  end
end
