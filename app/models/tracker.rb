class Tracker < ApplicationRecord

	#attr_accessor :name, :keywords, :enabled, :look_in

	def initialize(attributes = {})
		super(attributes)
		@name = attributes[:name]
		@keywords = attributes[:keywords]
		@enabled = attributes[:enabled]
		@look_in = attributes[:look_in]
	end

end
