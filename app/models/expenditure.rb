class Expenditure < ActiveRecord::Base

	def total_price 
		self.total_price+=self.price
		self.save
	end
	
end
