class Profile < ApplicationRecord
  belongs_to :user, optional: true
  has_many :profile_instruments
  has_many :instruments, through: :profile_instruments
  has_many :profile_styles
  has_many :styles, through: :profile_styles
  has_many :influences
  has_many :influenced_by, through: :influences

  validates :full_name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  has_rich_text :bio
end
