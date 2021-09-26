FactoryBot.define do
  factory :restaurant do
    name { "Titaya's Thai Cuisine" }
    description { "delicious thai food" }
    rating { "great" }
    tried { true }
    latitude { 30.323636989739423 }
    longitude { -97.7273331544981 }
    cuisine { "thai" }
    association :region, factory: :region
  end
end