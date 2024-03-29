require 'test_helper'

class CampaignsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campaign = campaigns(:one)
  end

  test "should get index" do
    get campaigns_url, as: :json
    assert_response :success
  end

  test "should create campaign" do
    assert_difference('Campaign.count') do
      post campaigns_url, params: { campaign: { city: @campaign.city, country: @campaign.country, description: @campaign.description, location: @campaign.location, state: @campaign.state, title: @campaign.title, userid: @campaign.userid } }, as: :json
    end

    assert_response 201
  end

  test "should show campaign" do
    get campaign_url(@campaign), as: :json
    assert_response :success
  end

  test "should update campaign" do
    patch campaign_url(@campaign), params: { campaign: { city: @campaign.city, country: @campaign.country, description: @campaign.description, location: @campaign.location, state: @campaign.state, title: @campaign.title, userid: @campaign.userid } }, as: :json
    assert_response 200
  end

  test "should destroy campaign" do
    assert_difference('Campaign.count', -1) do
      delete campaign_url(@campaign), as: :json
    end

    assert_response 204
  end
end
