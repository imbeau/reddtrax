require 'test_helper'

class TrackersControllerTest < ActionDispatch::IntegrationTest


	def setup
		@base_title = "ReddTrax"
	end

  test "should get new" do
    get trackers_new_url
    assert_response :success
    assert_select "title", "Create New Tracker | #{@base_title}"
  end

  test "should get index" do
    get trackers_index_url
    assert_response :success
    assert_select "title", "View all Trackers | #{@base_title}"
  end

end
