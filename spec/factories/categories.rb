FactoryBot.define do
  factory :category do
  	sequence(:name){ |n| "Category#{n}" }
  end

  trait :with_pets do
  	after :create do |category|
  		create_list :pet, 3, category: category
  	end
  end
end
