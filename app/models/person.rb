class Person < ApplicationRecord
  # Rails Association
  has_many :dogs, dependent: :destroy

  # Validation
  validates :age, numericality: true
  validates :first_name, :last_name, :age, presence: true
  validates :gender, inclusion: { in: %w(Male Female Other), message: "is not a valid option \nAllowed genders are male, female, or other" }
  
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
  
end
