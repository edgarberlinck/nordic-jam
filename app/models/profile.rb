class Profile < ApplicationRecord
  belongs_to :user, optional: true
  has_many :profile_instruments
  has_many :instruments, through: :profile_instruments
  has_many :profile_styles
  has_many :styles, through: :profile_styles
  has_many :profile_influences
  has_many :influences, through: :profile_influences
  has_one_attached :avatar
  validates :full_name, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :date_of_birth, presence: true
  has_rich_text :bio

  # Convert string to date before saving
  before_save :parse_date_of_birth

  def age
    return nil unless date_of_birth.present?
    now = Time.now.utc.to_date
    now.year - date_of_birth.to_date.year - (date_of_birth.to_date.change(year: now.year) > now ? 1 : 0)
  end

  private

  def parse_date_of_birth
    return if date_of_birth.is_a?(Date)
    self.date_of_birth = Date.parse(date_of_birth) if date_of_birth.present?
  rescue Date::Error
    errors.add(:date_of_birth, "is not a valid date")
  end
end
