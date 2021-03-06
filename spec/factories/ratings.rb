FactoryGirl.define do
  factory :rating do
    review { Faker::Lorem.sentence }
    rating { Faker::Number.between(1, 10) }
    book
    customer
    state "pending"
  end

end
