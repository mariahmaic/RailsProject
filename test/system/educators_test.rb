require "application_system_test_case"

class EducatorsTest < ApplicationSystemTestCase
  setup do
    @educator = educators(:one)
  end

  test "visiting the index" do
    visit educators_url
    assert_selector "h1", text: "Educators"
  end

  test "should create educator" do
    visit educators_url
    click_on "New educator"

    fill_in "Coursename", with: @educator.coursename
    fill_in "University", with: @educator.university
    click_on "Create Educator"

    assert_text "Educator was successfully created"
    click_on "Back"
  end

  test "should update Educator" do
    visit educator_url(@educator)
    click_on "Edit this educator", match: :first

    fill_in "Coursename", with: @educator.coursename
    fill_in "University", with: @educator.university
    click_on "Update Educator"

    assert_text "Educator was successfully updated"
    click_on "Back"
  end

  test "should destroy Educator" do
    visit educator_url(@educator)
    click_on "Destroy this educator", match: :first

    assert_text "Educator was successfully destroyed"
  end
end
