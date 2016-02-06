class Contact < ActiveRecord::Base
  belongs_to :client

  validates :kind, :info, presence: true
end
