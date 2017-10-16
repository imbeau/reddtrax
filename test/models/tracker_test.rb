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
=begin

Both of these tests aren't valid for now

	test "should have a status" do
		@tracker.enabled = nil
		assert_not @tracker.valid?
	end


	test "should have a look in" do
		@tracker.look_in = nil
		assert_not @tracker.valid?
	end
=end
	test "name shouldn't be too long" do
		@tracker.name = "a" * 151
		assert_not @tracker.valid?
	end

	test "keywords shouldn't be too long" do
		@tracker.keywords = "a" * 301
		assert_not @tracker.valid?
	end
end
