require "application_system_test_case"

class CampaignsTest < ApplicationSystemTestCase
  setup do
    @campaign = campaigns(:one)
  end

  test "visiting the index" do
    visit campaigns_url
    assert_selector "h1", text: "Campaigns"
  end

  test "creating a Campaign" do
    visit campaigns_url
    click_on "New Campaign"

    fill_in "From email", with: @campaign.from_email
    fill_in "From name", with: @campaign.from_name
    fill_in "Html text", with: @campaign.html_text
    fill_in "Name", with: @campaign.name
    fill_in "Plain text", with: @campaign.plain_text
    fill_in "Recipients", with: @campaign.recipients
    fill_in "Reply to", with: @campaign.reply_to
    fill_in "Sent date", with: @campaign.sent_date
    fill_in "Title", with: @campaign.title
    click_on "Create Campaign"

    assert_text "Campaign was successfully created"
    click_on "Back"
  end

  test "updating a Campaign" do
    visit campaigns_url
    click_on "Edit", match: :first

    fill_in "From email", with: @campaign.from_email
    fill_in "From name", with: @campaign.from_name
    fill_in "Html text", with: @campaign.html_text
    fill_in "Name", with: @campaign.name
    fill_in "Plain text", with: @campaign.plain_text
    fill_in "Recipients", with: @campaign.recipients
    fill_in "Reply to", with: @campaign.reply_to
    fill_in "Sent date", with: @campaign.sent_date
    fill_in "Title", with: @campaign.title
    click_on "Update Campaign"

    assert_text "Campaign was successfully updated"
    click_on "Back"
  end

  test "destroying a Campaign" do
    visit campaigns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Campaign was successfully destroyed"
  end
end
