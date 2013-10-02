class User
	attr_accessor :name, :email

	def initialize(attributes = {})
		@name = attribute[:name]
		@email = attribute[:email]
	end

	def formated_email
		"#{@name} <#{@email}>"
	end
end

