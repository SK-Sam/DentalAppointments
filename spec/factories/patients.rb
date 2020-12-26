FactoryBot.define do
  factory :patient do
    name { "MyString" }
    insurance_type { "MyString" }
    sex { 1 }
    preexisting_conditions { false }
  end
end
