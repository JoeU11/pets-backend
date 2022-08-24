class Pet < ApplicationRecord
  validates :name, presence: true
  validates :animal, presence: true
  validates :age, numericality: { only_integer: true }
end
