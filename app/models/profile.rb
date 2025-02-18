class Profile < ApplicationRecord
  belongs_to :user, optional: true
  has_many :profile_instruments
  has_many :instruments, through: :profile_instruments
  has_many :profile_styles
  has_many :styles, through: :profile_styles
  has_many :profile_influences
  has_many :influences, through: :profile_influences

  validates :full_name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  has_rich_text :bio
end
