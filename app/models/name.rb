class Name < ApplicationRecord
  belongs_to :educator
  has_many :educators
end
