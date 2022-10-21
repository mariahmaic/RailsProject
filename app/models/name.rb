class Name < ApplicationRecord
  belongs_to :educator
  belongs_to :address
  has_one :university
  has_one :address
  has_many :coursename

  # validations
  valildates name:, presence: true, uniqueness: true

  def self.search_by(search_term)
    where("LOWER(name) LIKE :search_term", search_term: "%#{search_term.downcase}%")
    # OR LOWER(course) LIKE :search_term
  end
end
