class ProfileCreatedJam < ApplicationRecord
  belongs_to :profile
  has_rich_text :description
  validates :title, :description, :address, :country, :city, presence: true
end
