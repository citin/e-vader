class Person < ActiveRecord::Base
  has_many :bills

  validates :name, :cui, presence: true
  validates :cui, uniqueness: true

end
