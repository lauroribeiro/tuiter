require "application_system_test_case"

class TuitesTest < ApplicationSystemTestCase
  setup do
    @tuite = tuites(:one)
  end

  test "visiting the index" do
    visit tuites_url
    assert_selector "h1", text: "Tuites"
  end

  test "creating a Tuite" do
    visit tuites_url
    click_on "New Tuite"

    fill_in "Tuite", with: @tuite.tuite
    click_on "Create Tuite"

    assert_text "Tuite was successfully created"
    click_on "Back"
  end

  test "updating a Tuite" do
    visit tuites_url
    click_on "Edit", match: :first

    fill_in "Tuite", with: @tuite.tuite
    click_on "Update Tuite"

    assert_text "Tuite was successfully updated"
    click_on "Back"
  end

  test "destroying a Tuite" do
    visit tuites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tuite was successfully destroyed"
  end
end
