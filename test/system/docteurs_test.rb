require "application_system_test_case"

class DocteursTest < ApplicationSystemTestCase
  setup do
    @docteur = docteurs(:one)
  end

  test "visiting the index" do
    visit docteurs_url
    assert_selector "h1", text: "Docteurs"
  end

  test "creating a Docteur" do
    visit docteurs_url
    click_on "New Docteur"

    fill_in "Availability", with: @docteur.availability
    fill_in "Email", with: @docteur.email
    fill_in "Field in", with: @docteur.field_in
    fill_in "Names", with: @docteur.names
    fill_in "Telephone", with: @docteur.telephone
    fill_in "Upload cv", with: @docteur.upload_cv
    fill_in "Upload diploma", with: @docteur.upload_diploma
    click_on "Create Docteur"

    assert_text "Docteur was successfully created"
    click_on "Back"
  end

  test "updating a Docteur" do
    visit docteurs_url
    click_on "Edit", match: :first

    fill_in "Availability", with: @docteur.availability
    fill_in "Email", with: @docteur.email
    fill_in "Field in", with: @docteur.field_in
    fill_in "Names", with: @docteur.names
    fill_in "Telephone", with: @docteur.telephone
    fill_in "Upload cv", with: @docteur.upload_cv
    fill_in "Upload diploma", with: @docteur.upload_diploma
    click_on "Update Docteur"

    assert_text "Docteur was successfully updated"
    click_on "Back"
  end

  test "destroying a Docteur" do
    visit docteurs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Docteur was successfully destroyed"
  end
end
