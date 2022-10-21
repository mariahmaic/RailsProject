class Educator < ApplicationRecord
  def self.search_by(search_term)
    where("LOWER(university) LIKE :search_word", search_word: "%#{search_word.downcase}%")
  end
end
