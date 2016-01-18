class Client < ActiveRecord::Base
  has_many :bills
  has_many :contacts

  def full_name
    "#{name} #{surname}"
  end
end
