class ProfileCreatedJam < ApplicationRecord
  belongs_to :profile
  belongs_to :styles
  belongs_to :instruments

  validates :description, :address, :country, :city, presence: true
end