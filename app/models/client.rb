class Client < ActiveRecord::Base
  has_many :bills
  has_many :contacts
end
