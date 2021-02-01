require 'test_helper'

class ShowtimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @showtime = showtimes(:one)
  end

  test "should get index" do
    get showtimes_url, as: :json
    assert_response :success
  end

  test "should create showtime" do
    assert_difference('Showtime.count') do
      post showtimes_url, params: { showtime: { end: @showtime.end, playbill_id: @showtime.playbill_id, start: @showtime.start } }, as: :json
    end

    assert_response 201
  end

  test "should show showtime" do
    get showtime_url(@showtime), as: :json
    assert_response :success
  end

  test "should update showtime" do
    patch showtime_url(@showtime), params: { showtime: { end: @showtime.end, playbill_id: @showtime.playbill_id, start: @showtime.start } }, as: :json
    assert_response 200
  end

  test "should destroy showtime" do
    assert_difference('Showtime.count', -1) do
      delete showtime_url(@showtime), as: :json
    end

    assert_response 204
  end
end
