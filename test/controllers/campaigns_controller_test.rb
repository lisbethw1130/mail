require 'testhelper'

class CampaignsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campaign = campaigns(:one)
  end

  test "should get index" do
    get campaigns_url
    assert_response :success
  end

  test "should get new" do
    get new_campaign_url
    assert_response :success
  end

  test "should create campaign" do
    assert_difference('Campaign.count') do
      post campaigns_url, params: { campaign: { from_email: @campaign.from_email, from_name: @campaign.from_name, html_text: @campaign.html_text, name: @campaign.name, plain_text: @campaign.plain_text, recipients: @campaign.recipients, reply_to: @campaign.reply_to, sent_date: @campaign.sent_date, title: @campaign.title } }
    end

    assert_redirected_to campaign_url(Campaign.last)
  end

  test "should show campaign" do
    get campaign_url(@campaign)
    assert_response :success
  end

  test "should get edit" do
    get edit_campaign_url(@campaign)
    assert_response :success
  end

  test "should update campaign" do
    patch campaign_url(@campaign), params: { campaign: { from_email: @campaign.from_email, from_name: @campaign.from_name, html_text: @campaign.html_text, name: @campaign.name, plain_text: @campaign.plain_text, recipients: @campaign.recipients, reply_to: @campaign.reply_to, sent_date: @campaign.sent_date, title: @campaign.title } }
    assert_redirected_to campaign_url(@campaign)
  end

  test "should destroy campaign" do
    assert_difference('Campaign.count', -1) do
      delete campaign_url(@campaign)
    end

    assert_redirected_to campaigns_url
  end
end
