class Address < ApplicationRecord
  belongs_to :name
  has_one :name
  has_many :name

  # validates
  validates :city, presence: true
end
