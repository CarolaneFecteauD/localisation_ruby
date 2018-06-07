require "application_system_test_case"

class LocalisationsTest < ApplicationSystemTestCase
  setup do
    @localisation = localisations(:one)
  end

  test "visiting the index" do
    visit localisations_url
    assert_selector "h1", text: "Localisations"
  end

  test "creating a Localisation" do
    visit localisations_url
    click_on "New Localisation"

    click_on "Create Localisation"

    assert_text "Localisation was successfully created"
    click_on "Back"
  end

  test "updating a Localisation" do
    visit localisations_url
    click_on "Edit", match: :first

    click_on "Update Localisation"

    assert_text "Localisation was successfully updated"
    click_on "Back"
  end

  test "destroying a Localisation" do
    visit localisations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Localisation was successfully destroyed"
  end
end
