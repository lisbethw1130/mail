require 'test_helper'

class CampaignTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'wrong test' do
    campaign = Campaign.new
    assert_not campaign.save
  end
end
