class Book < ActiveRecord::Base
  attr_accessible :awesomeness, :length, :title
  has_many :pages,
	 dependent: :destroy, 
# 	 before_add: [:check_content]
# 	 after_add: [:lol]

# 	def check_content
# 		false 
# 	end 

# 	def lol 
# 		puts "lol"
	# end


end


