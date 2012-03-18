class Preview < ActiveRecord::Base
	belongs_to :product

	has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "75x75>" }
	
	attr_accessible :product_id, :picture

	validates_attachment_size :picture, :less_than => 3.megabytes
end