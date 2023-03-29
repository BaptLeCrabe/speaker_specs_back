require "test_helper"

class AcousticLoadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acoustic_load = acoustic_loads(:one)
  end

  test "should get index" do
    get acoustic_loads_url, as: :json
    assert_response :success
  end

  test "should create acoustic_load" do
    assert_difference("AcousticLoad.count") do
      post acoustic_loads_url, params: { acoustic_load: { name: @acoustic_load.name } }, as: :json
    end

    assert_response :created
  end

  test "should show acoustic_load" do
    get acoustic_load_url(@acoustic_load), as: :json
    assert_response :success
  end

  test "should update acoustic_load" do
    patch acoustic_load_url(@acoustic_load), params: { acoustic_load: { name: @acoustic_load.name } }, as: :json
    assert_response :success
  end

  test "should destroy acoustic_load" do
    assert_difference("AcousticLoad.count", -1) do
      delete acoustic_load_url(@acoustic_load), as: :json
    end

    assert_response :no_content
  end
end
