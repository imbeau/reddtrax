class Tracker < ApplicationRecord
	validates :name, presence: true, length: { maximum: 150 }
	validates :keywords, presence: true, length: { maximum: 300 }
	validates :enabled, presence: true
	validates :look_in, presence: true


	def initialize(attributes = {})
		super(attributes)
		@name = attributes[:name]
		@keywords = attributes[:keywords]
		@enabled = attributes[:enabled]
		@look_in = attributes[:look_in]
	end

end
