require 'test_helper'

class TrackerTest < ActiveSupport::TestCase

	def setup
		@tracker = Tracker.new(name: "Beau's First Tracker", keywords: "apple watch", enabled: "true", look_in: "1")
	end

	test "should be valid" do 
		assert @tracker.valid?
	end

	test "should have a name" do
		@tracker.name = ""
		assert_not @tracker.valid?
	end

	test "should have keywords" do
		@tracker.keywords = ""
		assert_not @tracker.valid?
	end	

	test "should have a status" do
		@tracker.enabled = ""
		assert_not @tracker.valid?
	end

	test "should have a look in" do
		@tracker.look_in = ""
		assert_not @tracker.valid?
	end

	test "name shouldn't be too long" do
		@tracker.name = "a" * 150
		assert_not @tracker.valid?
	end

	test "keywords shouldn't be too long" do
		@tracker.keywords = "a" * 300
		assert_not @tracker.valid?
	end
end
