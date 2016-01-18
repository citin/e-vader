class Client < ActiveRecord::Base
  has_many :bills
  has_many :contacts

  accepts_nested_attributes_for :contacts

  def full_name
    "#{name} #{surname}"
  end
end
