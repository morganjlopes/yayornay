class Question < ActiveRecord::Base
	has_many :votes

	def yays
		votes.where(:agreement => true).count
	end

	def nays
		votes.where(:agreement => false).count
	end

	def total_votes
		yays + nays
	end

	def nay_percentage
		percentage = 0.00
		percentage +=	nays.to_d / total_votes.to_d
		percentage * 100
	end

	def yay_percentage
		percentage = 0.00
		percentage +=	yays.to_d / total_votes.to_d
		percentage * 100
	end
end
