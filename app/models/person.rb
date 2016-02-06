class Person < ActiveRecord::Base
  has_many :bills

  validates :cui, uniqueness: true

end
