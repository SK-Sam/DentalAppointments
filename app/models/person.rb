class Person < ApplicationRecord
  self.abstract_class = true
  enum sex: [:male, :female]
end