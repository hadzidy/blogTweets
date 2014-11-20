class Post < ActiveRecord::Base
	after_validation :geocode
 		geocoded_by :address
	validates_presence_of :tweet
	belongs_to :hashtag, :class_name => 'Hashtag'
	hashtag_id :integer
end
