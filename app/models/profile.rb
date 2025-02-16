class Profile < ApplicationRecord
  belongs_to :user, optional: true

  validates :full_name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  has_rich_text :bio
end
