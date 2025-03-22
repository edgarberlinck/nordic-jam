class ProfileCreatedBand < ApplicationRecord
  belongs_to :profile
  has_many :styles, through: :profile_created_band_styles
end
