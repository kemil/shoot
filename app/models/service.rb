class Service < ActiveRecord::Base
  validates_format_of :photography_type, :with => /^[a-zA-Z\d\s]*$/, :message=> "is invalid, input characters only."

	def type_class
		return self.photography_type.downcase.gsub(" ", "-")
	end
end
