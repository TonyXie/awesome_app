class Product < ActiveRecord::Base
  validate :awesome_validate
  attr_accessible :description, :id, :name, :first_name

	def awesome_validate
		if first_name == "not awesome"
			errors.add(:first_name, "not awesome enough")
		end
	end

end


