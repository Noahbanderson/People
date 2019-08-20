class Dog < ApplicationRecord
  belongs_to :person

  validates :age, numericality: true
end
