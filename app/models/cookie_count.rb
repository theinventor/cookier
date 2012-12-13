class CookieCount < ActiveRecord::Base
  belongs_to :cookie
  belongs_to :site_sale

  attr_accessible :cookie_id, :quantity, :site_sale_id, :type

end
