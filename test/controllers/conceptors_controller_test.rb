require "test_helper"

class ConceptorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conceptor = conceptors(:one)
  end

  test "should get index" do
    get conceptors_url
    assert_response :success
  end

  test "should get new" do
    get new_conceptor_url
    assert_response :success
  end

  test "should create conceptor" do
    assert_difference("Conceptor.count") do
      post conceptors_url, params: { conceptor: { desc: @conceptor.desc, name: @conceptor.name, website: @conceptor.website } }
    end

    assert_redirected_to conceptor_url(Conceptor.last)
  end

  test "should show conceptor" do
    get conceptor_url(@conceptor)
    assert_response :success
  end

  test "should get edit" do
    get edit_conceptor_url(@conceptor)
    assert_response :success
  end

  test "should update conceptor" do
    patch conceptor_url(@conceptor), params: { conceptor: { desc: @conceptor.desc, name: @conceptor.name, website: @conceptor.website } }
    assert_redirected_to conceptor_url(@conceptor)
  end

  test "should destroy conceptor" do
    assert_difference("Conceptor.count", -1) do
      delete conceptor_url(@conceptor)
    end

    assert_redirected_to conceptors_url
  end
end
