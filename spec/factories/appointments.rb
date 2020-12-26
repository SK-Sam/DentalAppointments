FactoryBot.define do
  factory :appointment do
    date { "2020-12-26 05:31:00" }
    service { "MyString" }
    appt_length { 1 }
  end
end
