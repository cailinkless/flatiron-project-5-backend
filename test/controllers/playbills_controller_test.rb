require 'test_helper'

class PlaybillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @playbill = playbills(:one)
  end

  test "should get index" do
    get playbills_url, as: :json
    assert_response :success
  end

  test "should create playbill" do
    assert_difference('Playbill.count') do
      post playbills_url, params: { playbill: { about: @playbill.about, title: @playbill.title } }, as: :json
    end

    assert_response 201
  end

  test "should show playbill" do
    get playbill_url(@playbill), as: :json
    assert_response :success
  end

  test "should update playbill" do
    patch playbill_url(@playbill), params: { playbill: { about: @playbill.about, title: @playbill.title } }, as: :json
    assert_response 200
  end

  test "should destroy playbill" do
    assert_difference('Playbill.count', -1) do
      delete playbill_url(@playbill), as: :json
    end

    assert_response 204
  end
end
