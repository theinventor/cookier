class Cookie < ActiveRecord::Base
  has_many :cookie_counts
  attr_accessible :name
end
