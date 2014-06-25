class Image < ActiveRecord::Base
	belongs_to :story
	has_attached_file :image, :styles => { :medium => "1000*1000>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
