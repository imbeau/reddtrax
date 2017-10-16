require 'test_helper'

class CampaignCreationTest < ActionDispatch::IntegrationTest
 
	test "invalid_campaign_info" do
		get '/trackers/new'
		assert_no_difference 'Tracker.count' do
			post trackers_new_path, params: {
				tracker: {
					name: "",
					keywords: ""
				}
			}
		end
		#assert_template '/trackers/new'
	end
end
