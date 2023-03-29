require "application_system_test_case"

class ConceptorsTest < ApplicationSystemTestCase
  setup do
    @conceptor = conceptors(:one)
  end

  test "visiting the index" do
    visit conceptors_url
    assert_selector "h1", text: "Conceptors"
  end

  test "should create conceptor" do
    visit conceptors_url
    click_on "New conceptor"

    fill_in "Desc", with: @conceptor.desc
    fill_in "Name", with: @conceptor.name
    fill_in "Website", with: @conceptor.website
    click_on "Create Conceptor"

    assert_text "Conceptor was successfully created"
    click_on "Back"
  end

  test "should update Conceptor" do
    visit conceptor_url(@conceptor)
    click_on "Edit this conceptor", match: :first

    fill_in "Desc", with: @conceptor.desc
    fill_in "Name", with: @conceptor.name
    fill_in "Website", with: @conceptor.website
    click_on "Update Conceptor"

    assert_text "Conceptor was successfully updated"
    click_on "Back"
  end

  test "should destroy Conceptor" do
    visit conceptor_url(@conceptor)
    click_on "Destroy this conceptor", match: :first

    assert_text "Conceptor was successfully destroyed"
  end
end
