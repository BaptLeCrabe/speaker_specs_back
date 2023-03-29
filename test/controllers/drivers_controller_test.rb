require "test_helper"

class DriversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @driver = drivers(:one)
  end

  test "should get index" do
    get drivers_url, as: :json
    assert_response :success
  end

  test "should create driver" do
    assert_difference("Driver.count") do
      post drivers_url, params: { driver: { glb_file: @driver.glb_file, brand_id: @driver.brand_id, doc_files: @driver.doc_files, frequency_range: @driver.frequency_range, loadspeaker_link: @driver.loadspeaker_link, name: @driver.name, size: @driver.size, spl: @driver.spl, thiele_small_id: @driver.thiele_small_id, type: @driver.type } }, as: :json
    end

    assert_response :created
  end

  test "should show driver" do
    get driver_url(@driver), as: :json
    assert_response :success
  end

  test "should update driver" do
    patch driver_url(@driver), params: { driver: { glb_file: @driver.glb_file, brand_id: @driver.brand_id, doc_files: @driver.doc_files, frequency_range: @driver.frequency_range, loadspeaker_link: @driver.loadspeaker_link, name: @driver.name, size: @driver.size, spl: @driver.spl, thiele_small_id: @driver.thiele_small_id, type: @driver.type } }, as: :json
    assert_response :success
  end

  test "should destroy driver" do
    assert_difference("Driver.count", -1) do
      delete driver_url(@driver), as: :json
    end

    assert_response :no_content
  end
end
