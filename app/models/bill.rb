class Bill < ActiveRecord::Base
  belongs_to :client
  has_one :person

  accepts_nested_attributes_for :person

  validates :total, numericality: true
  validates :description, :total, :issue_date, presence: true

  def self.total_by_year
    group("strftime('%Y', issue_date)").sum('total')
  end

  def self.quantity_by_month
    where(%Q{ strftime('%Y', issue_date) = "#{Time.now.year}" }).group("strftime('%m', issue_date)").count
  end

  def self.top_5
    group(:person_id).order("sum_total DESC").sum('total').first(5)
  end

  def issue_year
    self.issue_date.year
  end
end
