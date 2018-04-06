FactoryBot.define do
  factory :fish do
    name { Faker::Lorem.word }
  end

  factory :tuna, parent: :fish, class: 'Tuna' do
    origin { Faker::Lorem.word }
  end

  factory :shark, parent: :fish, class: 'Shark' do
    color { Faker::Color.color_name }
  end
end