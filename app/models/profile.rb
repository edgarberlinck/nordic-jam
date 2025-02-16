class Profile < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :email_address, presence: true, email: true
  validates :phone_number, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true
end
