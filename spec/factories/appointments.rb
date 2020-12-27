FactoryBot.define do
  factory :appointment do
    date { Faker::Date.between(from: '2021-01-01', to: '2022-01-01') }
    service { [
      "Cleaning", "Deep Cleaning", "Crown", "Extraction", "Implant"
      ].sample 
    }
    appt_length { Faker::Number.between(from: 20, to: 150) }
  end
end
