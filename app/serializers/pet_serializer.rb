class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :status
  belongs_to :category
end
