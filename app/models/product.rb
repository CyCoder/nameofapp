class Product < ActiveRecord::Base
	has_many :orders
	has_many :comments

	def average_rating
<<<<<<< HEAD
		comments.average(:rating).to_f
	end
=======
  	comments.average(:rating).to_f
	end

	validates :name, presence: true
>>>>>>> master
end
