FactoryBot.define do
  factory :dental_office do
    name { Faker::Company.name }
    street_address { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state_abbr }
    zip_code { Faker::Number.leading_zero_number(digits: 5) }
    insurance_type { ["HMO", "PPO"].sample }
  end
end
