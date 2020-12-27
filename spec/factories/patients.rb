FactoryBot.define do
  factory :patient do
    name { Faker::Superhero.name }
    insurance_type { ["HMO", "PPO"].sample }
    sex { [:male, :female].sample }
    preexisting_conditions { Faker::Boolean.boolean(true_ratio: 0.4) }
  end
end
