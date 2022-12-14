class Educator < ApplicationRecord
belongs_to :name
has_many :name
has_many :city

# Validation check
validates :university, :coursename, presence: true

  def self.search_by(search_term)
    where("LOWER(university) LIKE :search_word", search_word: "%#{search_word.downcase}%")
  end
end
