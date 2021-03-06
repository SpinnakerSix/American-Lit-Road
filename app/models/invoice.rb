class Invoice < ActiveRecord::Base
	belongs_to :company
	belongs_to :product

  validates :product_id, :presence => true
  validates :credit_card_token, :presence => true
  validates :price, :presence => true
	validates :buyer_ip, :presence=>true
end





# == Schema Information
#
# Table name: invoices
#
#  id                  :integer(4)      not null, primary key
#  user_id             :integer(4)
#  product_id          :integer(4)
#  shipping_address_id :integer(4)
#  credit_card_token   :string(255)
#  price               :decimal(8, 2)   default(0.0)
#  created_at          :datetime
#  updated_at          :datetime
#  buyer_ip            :string(255)
#  email               :string(255)
#  dispute             :boolean(1)      default(FALSE)
#  paid                :boolean(1)      default(FALSE)
#  stripe_customer_id  :string(255)
#

