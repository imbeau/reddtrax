class Tracker < ApplicationRecord
	validates :name, presence: true, length: { maximum: 150 }
	validates :keywords, presence: true, length: { maximum: 300 }
	enum look_in:  { both: 0, submissions: 1, comments: 3}


	def initialize(attributes = {})
		super(attributes)
		@name = attributes[:name]
		@keywords = attributes[:keywords]
	end

end
