class ProfileCreatedBand < ApplicationRecord
  belongs_to :profile
  has_many :styles, through: :profile_created_band_styles

  has_rich_text :about
end
