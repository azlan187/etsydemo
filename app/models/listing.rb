class Listing < ActiveRecord::Base
	has_attached_file :image, :default_url => "default.jpg",
      				  :storage => :dropbox,
      				  :dropbox_credentials => Rails.root.join("config/dropbox.yml")
	# if Rails.env.development?
	# 	has_attached_file :image, :default_url => "default.jpg"
	# else
	# 	has_attached_file :image, :default_url => "default.jpng", 
	# 					  :storage => :dropbox,
	#     				  :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
	#     				  :path => ":style/:id_:filename"
	# end
end