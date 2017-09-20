require 'test_helper'

class TrackersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get trackers_new_url
    assert_response :success
  end

  test "should get index" do
    get trackers_index_url
    assert_response :success
  end

end
