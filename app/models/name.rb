class Name < ApplicationRecord
  belongs_to :educator
  has_many :educators

  def self.search_by(search_term)
    where("LOWER(name) LIKE :search_term", search_term: "%#{search_term.downcase}%")
    # OR LOWER(course) LIKE :search_term
  end
end
