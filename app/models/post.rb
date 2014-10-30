class Post < ActiveRecord::Base
	validates_presence_of :tweet, :latitud, :longitud
end
