FactoryBot.define do
  factory :dentist do
    name { Faker::Name.name }
    discipline { ["General", "Pedodontist", "Endodontist", "Periodontist"].sample }
    sex { [:male, :female].sample }
  end
end
