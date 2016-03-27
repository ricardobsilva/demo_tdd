FactoryGirl.define do
  factory :band do
    name {Faker::Name.name}
    musical_genre {Faker::Name.title}
    site {Faker::Internet.url}
  end
end
