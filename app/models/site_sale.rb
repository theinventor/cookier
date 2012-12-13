class SiteSale < ActiveRecord::Base
  has_many :cookie_counts
  has_many :cookies, :through => :cookie_counts

  attr_accessible :end_at, :location, :start_at
end
