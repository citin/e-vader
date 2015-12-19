class Bill < ActiveRecord::Base
  belongs_to :client
  has_one :person
end
