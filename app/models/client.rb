class Client < ActiveRecord::Base
  has_many :bills, dependent: :destroy
  has_many :contacts, dependent: :destroy

  accepts_nested_attributes_for :contacts, allow_destroy: true
  validates_associated :contacts

  validates :name, :surname, :birthdate, :gender, :du,  :cui, :contacts, presence: true
  validates :du, numericality: true
  validates :du, :cui, uniqueness: true

  def full_name
    "#{name} #{surname}"
  end

  def age
    now = Time.now.utc.to_date
    now.year - birthdate.year - (birthdate.to_date.change(:year => now.year) > now ? 1 : 0)
  end

end
