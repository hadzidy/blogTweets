class Post < ActiveRecord::Base
	after_validation :geocode
 		geocoded_by :address
	validates_presence_of :tweet
end
